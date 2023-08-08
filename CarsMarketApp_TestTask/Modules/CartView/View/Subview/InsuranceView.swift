//
//  InsuranceView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 08.08.2023.
//

import UIKit

class InsuranceView: UIView {
    
    private(set) var titleLabel: BaseLabel = {
        let label = BaseLabel()
        label.text = "Каско"
        label.font = .boldSystemFont(ofSize: 22)
        return label
    }()
    
    private(set) var actionButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "plus"), for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
        addSubview(titleLabel)
        addSubview(actionButton)
        
        backgroundColor = .white
    }
}


extension InsuranceView {
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            
            actionButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            actionButton.heightAnchor.constraint(equalToConstant: 30),
            actionButton.widthAnchor.constraint(equalToConstant: 30),
            actionButton.topAnchor.constraint(equalTo: topAnchor, constant: 15)

        ])
    }
}
