//
//  CartView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 08.08.2023.
//

import UIKit

class CartView: UIView {
    
    private(set) var mainImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private(set) var titleLabel: BaseLabel = {
        let label = BaseLabel()
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    private(set) var sumLabel: BaseLabel = {
        let label = BaseLabel()
        label.font = .boldSystemFont(ofSize: 35)
        label.textColor = #colorLiteral(red: 0.4851416349, green: 0, blue: 0, alpha: 0.9358146823)
        return label
    }()
    
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    
    private let stackView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private(set) var insuranceLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var sportPackageLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var warrantyLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(mainImage)
        addSubview(titleLabel)
        addSubview(sumLabel)
        addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addSubview(insuranceLabel)
        stackView.addSubview(warrantyLabel)
        stackView.addSubview(sportPackageLabel)
    }
}

extension CartView {
    
    private func setupConstraints() {
        
        let margins = layoutMarginsGuide
        
        NSLayoutConstraint.activate([
        
            mainImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            mainImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            mainImage.widthAnchor.constraint(equalToConstant: 70),
            mainImage.heightAnchor.constraint(equalToConstant: 70),
            
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: 10),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            
            sumLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            sumLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 10),
            sumLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            sumLabel.heightAnchor.constraint(equalToConstant: 30),
            
            scrollView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 80),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            scrollView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -10),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            stackView.widthAnchor.constraint(equalToConstant: 390),
            stackView.heightAnchor.constraint(equalToConstant: 900),
            
            insuranceLabel.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 10),
            insuranceLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            insuranceLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            insuranceLabel.heightAnchor.constraint(equalToConstant: 60),
            
            warrantyLabel.topAnchor.constraint(equalTo: insuranceLabel.bottomAnchor, constant: 10),
            warrantyLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            warrantyLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            warrantyLabel.heightAnchor.constraint(equalToConstant: 60),
            
            sportPackageLabel.topAnchor.constraint(equalTo: warrantyLabel.bottomAnchor, constant: 10),
            sportPackageLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            sportPackageLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            sportPackageLabel.heightAnchor.constraint(equalToConstant: 60),
            
        ])
    }
}
