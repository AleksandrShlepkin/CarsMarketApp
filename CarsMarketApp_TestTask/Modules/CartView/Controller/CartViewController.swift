//
//  CartViewController.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 08.08.2023.
//

import UIKit


public enum State {
    case add
    case delete
    
    mutating func toggle() {
        self = self == .add ? .delete : .add
    }
}

class CartViewController: UIViewController {
    
    var car: CarsModel
    var pricePackage = 0
    private let cartView = CartView()
    
    private var stateInsuranse = State.delete {
        didSet {
            addPackage(package: 2)
        }
    }
    
    private var stateSport = State.delete {
        didSet {
            addPackage(package: 3)
        }
    }
    
    private var stateWarranty = State.delete {
        didSet {
            addPackage(package: 1)
        }
    }
    
    init(car: CarsModel) {
        self.car = car
        super.init(nibName: "CartViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(addInsurance),
                                               name: Notification.Name("Insurance"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(addSport),
                                               name: Notification.Name("Sport"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(addWarranty),
                                               name: Notification.Name("Warranty"),
                                               object: nil)
        
    }
    
    override func loadView() {
        view = cartView
    }
}

extension CartViewController {
    
    private func setupData() {
        cartView.mainImage.image = car.mainImage
        cartView.titleLabel.text = "\(car.carMake) \(car.model) \(car.type)"
        cartView.sumLabel.text = String(car.calculation)
    }
    
    public func addPackage(package pack: Int) {
        let carPrice = car.calculation
        let package = carPrice / 100 * pack
        
        switch stateInsuranse {
        case .add:
            self.pricePackage += package
            cartView.sumLabel.text = String(carPrice + pricePackage)
        case .delete:
            self.pricePackage -= package
            cartView.sumLabel.text = String((carPrice ) + pricePackage)
        }
    }
    
    @objc func addInsurance() {
        stateInsuranse.toggle()
    }

    @objc func addSport() {
        stateSport.toggle()
    }
    
    @objc func addWarranty() {
        stateWarranty.toggle()
    }
}
