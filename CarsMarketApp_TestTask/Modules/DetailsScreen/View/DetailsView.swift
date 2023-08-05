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
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private(set) var carMakeLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var priceLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var imagesCollection: ImagesCollectionView = {
        let image = ImagesCollectionView()
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(carMakeLabel)
        stackView.addArrangedSubview(priceLabel)
        stackView.addArrangedSubview(imagesCollection)
        stackView.addArrangedSubview(modelLabel)
        stackView.addArrangedSubview(powerLabel)
        stackView.addArrangedSubview(doorsCountLabel)
        stackView.addArrangedSubview(typeCarLabel)
        stackView.addArrangedSubview(typeEngineLabel)
        
        backgroundColor = .white
    }
    
}

extension DetailsView {
    
    private func setupConstraints() {
        
        let margins = layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: margins.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: margins.bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 390),
            stackView.heightAnchor.constraint(equalToConstant: 700),
            
            carMakeLabel.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 5),
            carMakeLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            carMakeLabel.heightAnchor.constraint(equalToConstant: 30),
            carMakeLabel.widthAnchor.constraint(equalToConstant: 100),
            
            modelLabel.leadingAnchor.constraint(equalTo: carMakeLabel.trailingAnchor, constant: 5),
            modelLabel.heightAnchor.constraint(equalToConstant: 25),
            modelLabel.heightAnchor.constraint(equalToConstant: 30),
            modelLabel.widthAnchor.constraint(equalToConstant: 100),
            
            imagesCollection.topAnchor.constraint(equalTo: carMakeLabel.bottomAnchor, constant: 10),
            imagesCollection.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            imagesCollection.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -5),
            imagesCollection.heightAnchor.constraint(equalToConstant: 200),
            
            priceLabel.topAnchor.constraint(equalTo: imagesCollection.bottomAnchor, constant: 10),
            priceLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            priceLabel.heightAnchor.constraint(equalToConstant: 30),
            
            doorsCountLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 5),
            doorsCountLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            doorsCountLabel.heightAnchor.constraint(equalToConstant: 30),
            
            typeCarLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 5),
            typeCarLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            typeCarLabel.heightAnchor.constraint(equalToConstant: 30),
            
            typeEngineLabel.topAnchor.constraint(equalTo: doorsCountLabel.bottomAnchor, constant: 5),
            typeEngineLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            typeEngineLabel.heightAnchor.constraint(equalToConstant: 30)
            
        ])
    }
}


