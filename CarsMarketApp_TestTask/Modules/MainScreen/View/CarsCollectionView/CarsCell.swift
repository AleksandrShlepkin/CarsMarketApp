//
//  CarsCell.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import UIKit

class CarsCell: UICollectionViewCell {
    
    static let identifier = "Cers"
    
    private(set) var carMakeLabel: BaseLabel = {
        let label = BaseLabel()
        label.font = .boldSystemFont(ofSize: 22)
        return label
    }()
    
    private(set) var mainImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private(set) var modelLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var powerLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var doorsCountLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var typeCarLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var typeEngineLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var logImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
        createConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createUI() {
        addSubview(carMakeLabel)
        addSubview(mainImage)
        addSubview(modelLabel)
        addSubview(powerLabel)
        addSubview(doorsCountLabel)
        addSubview(typeCarLabel)
        addSubview(logImage)
        addSubview(typeEngineLabel)
        
        backgroundColor = #colorLiteral(red: 0.7557452321, green: 0.7557452321, blue: 0.7557452321, alpha: 0.6990618025)
    }
}

extension CarsCell {
    
    private func createConstraints() {
        NSLayoutConstraint.activate([
            
            carMakeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            carMakeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
//            carMakeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            carMakeLabel.heightAnchor.constraint(equalToConstant: 30),
            
            modelLabel.centerYAnchor.constraint(equalTo: carMakeLabel.centerYAnchor, constant: 0),
            modelLabel.leadingAnchor.constraint(equalTo: carMakeLabel.trailingAnchor, constant: 5),
            modelLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            modelLabel.heightAnchor.constraint(equalToConstant: 25),
            
            mainImage.topAnchor.constraint(equalTo: carMakeLabel.bottomAnchor, constant: 5),
            mainImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
//            mainImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            mainImage.heightAnchor.constraint(equalToConstant: 140),
            mainImage.widthAnchor.constraint(equalToConstant: 200),

            typeEngineLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 5),
            typeEngineLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            typeEngineLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            typeEngineLabel.heightAnchor.constraint(equalToConstant: 25)
            
        ])
    }
}
