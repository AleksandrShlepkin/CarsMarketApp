//
//  CarsLogoCell.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import UIKit

class CarsLogoCell: UICollectionViewCell {
    
    static let identifier = "Logo"
    
    private let logoImage: UIImageView = {
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
        addSubview(logoImage)
        backgroundColor = .blue
    }
    
}

extension CarsLogoCell {
    
    private func createConstraints() {
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 1),
            logoImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 1),
            logoImage.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -1),
            logoImage.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -1)
        ])
    }
}
