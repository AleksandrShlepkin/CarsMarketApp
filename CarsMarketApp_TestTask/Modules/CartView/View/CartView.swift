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
    
    
    private(set) var insuranceLabel: InsuranceView = {
        let view = InsuranceView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 10
        return view
    }()
    
    private(set) var sportPackageLabel: SportPackageView = {
        let view = SportPackageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 10
        return view
    }()
    
    private(set) var warrantyLabel: WarrantyView = {
        let view = WarrantyView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 10
        return view
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
        addSubview(mainImage)
        addSubview(titleLabel)
        addSubview(sumLabel)
        stackView.addSubview(insuranceLabel)
        stackView.addSubview(warrantyLabel)
        stackView.addSubview(sportPackageLabel)
        
        backgroundColor = .white
    }
}

extension CartView {
    
    private func setupConstraints() {
        
        let margins = layoutMarginsGuide
        
        NSLayoutConstraint.activate([
        
            mainImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            mainImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            mainImage.widthAnchor.constraint(equalToConstant: 220),
            mainImage.heightAnchor.constraint(equalToConstant: 140),
            
            titleLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            
            sumLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            sumLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            sumLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            sumLabel.heightAnchor.constraint(equalToConstant: 40),
            
            scrollView.topAnchor.constraint(equalTo: sumLabel.bottomAnchor, constant: 20),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: margins.bottomAnchor),
            
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
