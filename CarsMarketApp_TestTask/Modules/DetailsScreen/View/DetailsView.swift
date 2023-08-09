//
//  DetailsView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 04.08.2023.
//

import UIKit

class DetailsView: UIView {
    
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.showsVerticalScrollIndicator = false
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    private let stackView: UIView = {
        let stack = UIView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private(set) var carMakeLabel: BaseLabel = {
        let label = BaseLabel()
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    private(set) var priceLabel: BaseLabel = {
        let label = BaseLabel()
        label.font = .boldSystemFont(ofSize: 35)
        label.textColor = #colorLiteral(red: 0.4851416349, green: 0, blue: 0, alpha: 0.9358146823)
        return label
    }()
    
    private(set) var imagesCollection: ImagesCollectionView = {
        let image = ImagesCollectionView()
        return image
    }()
    
    private(set) var modelLabel: BaseLabel = {
        let label = BaseLabel()
        label.font = .boldSystemFont(ofSize: 30)
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
    
    private(set) var buyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Перейти к оформлению", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.backgroundColor = #colorLiteral(red: 0, green: 0.447752893, blue: 0.9782672524, alpha: 0.8542648627)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
        buyButton.addTarget(self, action: #selector(sendData), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addSubview(carMakeLabel)
        stackView.addSubview(priceLabel)
        stackView.addSubview(imagesCollection)
        stackView.addSubview(modelLabel)
        stackView.addSubview(powerLabel)
        stackView.addSubview(doorsCountLabel)
        stackView.addSubview(typeCarLabel)
        stackView.addSubview(typeEngineLabel)
        stackView.addSubview(buyButton)
                
        backgroundColor = .white
    }
}

extension DetailsView {
    
    @objc private func sendData() {
        NotificationCenter.default.post(name: Notification.Name("Cart"), object: nil)
    }
}

extension DetailsView {
    
    private func setupConstraints() {
        
        let margins = layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: margins.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -10),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 390),
            stackView.heightAnchor.constraint(equalToConstant: 900),
            
            carMakeLabel.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 5),
            carMakeLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            carMakeLabel.heightAnchor.constraint(equalToConstant: 30),
            
            modelLabel.leadingAnchor.constraint(equalTo: carMakeLabel.trailingAnchor, constant: 5),
            modelLabel.centerYAnchor.constraint(equalTo: carMakeLabel.centerYAnchor),
            modelLabel.heightAnchor.constraint(equalToConstant: 25),
            modelLabel.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 5),
            
            imagesCollection.topAnchor.constraint(equalTo: carMakeLabel.bottomAnchor, constant: 10),
            imagesCollection.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            imagesCollection.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -5),
            imagesCollection.heightAnchor.constraint(equalToConstant: 400),
            imagesCollection.bottomAnchor.constraint(equalTo: priceLabel.topAnchor, constant: -10),
            
            priceLabel.topAnchor.constraint(equalTo: imagesCollection.bottomAnchor, constant: 10),
            priceLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            priceLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -5),
            priceLabel.heightAnchor.constraint(equalToConstant: 40),
            
            doorsCountLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 20),
            doorsCountLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            doorsCountLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -5),
            doorsCountLabel.heightAnchor.constraint(equalToConstant: 30),
            
            typeCarLabel.topAnchor.constraint(equalTo: doorsCountLabel.bottomAnchor, constant: 5),
            typeCarLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            typeCarLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -5),
            typeCarLabel.heightAnchor.constraint(equalToConstant: 50),
            
            typeEngineLabel.topAnchor.constraint(equalTo: typeCarLabel.bottomAnchor, constant: 5),
            typeEngineLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            typeEngineLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -5),
            typeEngineLabel.heightAnchor.constraint(equalToConstant: 50),
            
            powerLabel.topAnchor.constraint(equalTo: typeEngineLabel.bottomAnchor, constant: 5),
            powerLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            powerLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -5),
            powerLabel.heightAnchor.constraint(equalToConstant: 30),
            
            buyButton.topAnchor.constraint(equalTo: powerLabel.bottomAnchor, constant: 30),
            buyButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 60),
            buyButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -60),
            buyButton.heightAnchor.constraint(equalToConstant: 80),
            
        ])
    }
}
