//
//  MainScreenView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import UIKit

class MainScreenView: UIView {
        
    private(set) var logoCollection: CarsLogoCollectionView = {
        let collection = CarsLogoCollectionView()
        return collection
    }()
    
    private(set) var carsCollection: CarsColletcionView = {
        let collection = CarsColletcionView()
        return collection
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 50)
        label.text = "Cars Market"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
        createConstaraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createUI() {
        backgroundColor = .white
        addSubview(titleLabel)
        addSubview(logoCollection)
        addSubview(carsCollection)
    }
}

extension MainScreenView {

    private func createConstaraints() {
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),
            titleLabel.heightAnchor.constraint(equalToConstant: 50),

            logoCollection.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            logoCollection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            logoCollection.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            logoCollection.heightAnchor.constraint(equalToConstant: 80),

            carsCollection.topAnchor.constraint(equalTo: logoCollection.bottomAnchor, constant: 20),
            carsCollection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            carsCollection.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            carsCollection.bottomAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.bottomAnchor, multiplier: 0),
        ])
    }
}
