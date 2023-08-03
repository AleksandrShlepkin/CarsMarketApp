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
        
        backgroundColor = .brown
    }
}

extension CarsCell {
    
    private func createConstraints() {
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            mainImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            mainImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            mainImage.heightAnchor.constraint(equalToConstant: 80),
            mainImage.widthAnchor.constraint(equalToConstant: 120),
            
            carMakeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            carMakeLabel.leadingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: 5),
            carMakeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            carMakeLabel.heightAnchor.constraint(equalToConstant: 30),
            
            
            
        ])
    }
}
