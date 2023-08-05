//
//  ImagesCell.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 05.08.2023.
//

import UIKit

class ImagesCell: UICollectionViewCell {
    
    static let identifier = "image"
    
    private(set) var carImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(carImage)
        backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        layer.cornerRadius = 10
    }
}

extension ImagesCell {
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            carImage.topAnchor.constraint(equalTo: topAnchor),
            carImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            carImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            carImage.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
