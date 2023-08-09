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
    private let cartView = CartView()
    private let insurance = InsuranceView()
    private let ins = 2
    
    
    public var state = State.delete {
        didSet {
            addPackage(package: ins)
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
                                               name: Notification.Name("Pack"),
                                               object: nil)
    }
    
    override func loadView() {
        view = cartView
    }
}

extension CartViewController {
    
    private func setupData() {
//        let carPrice = (Int(car.price) ?? 0 + pricePackage)
        cartView.mainImage.image = car.mainImage
        cartView.titleLabel.text = "\(car.carMake) \(car.model) \(car.type)"
        cartView.sumLabel.text = car.price
    }
    
    public func addPackage(package pack: Int) {
        var pricePackage = 0
        let carPrice = (Int(car.price))
        let package = ((carPrice) ?? 0) / 100 * pack
        pricePackage = package
        let sumPrice = (Int(car.price) ?? 0 + pricePackage)

        switch state {
        case .add:
            cartView.sumLabel.text = String(sumPrice)
        case .delete:
            cartView.sumLabel.text = String((sumPrice))

        }
    }
    
    @objc func addInsurance() {
        state.toggle()
    }
}
