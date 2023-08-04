//
//  ViewController.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    private let mainScreenView = MainScreenView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = mainScreenView

    }

}

