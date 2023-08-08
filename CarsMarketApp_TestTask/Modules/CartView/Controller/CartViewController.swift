//
//  CartViewController.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 08.08.2023.
//

import UIKit

class CartViewController: UIViewController {
    
    var car: CarsModel
    private let cartView = CartView()

    
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
    }
    
    override func loadView() {
        view = cartView
    }
}

extension CartViewController {
    
    private func setupData() {
        
        cartView.mainImage.image = car.mainImage
        cartView.titleLabel.text = "\(car.carMake) \(car.model) \(car.type)"
        cartView.sumLabel.text = car.price
        
        
    }
}
