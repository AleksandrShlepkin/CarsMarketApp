//
//  CartViewController.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 08.08.2023.
//

import UIKit

class CartViewController: UIViewController {
    
    private let cartView = CartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = cartView
    }
}
