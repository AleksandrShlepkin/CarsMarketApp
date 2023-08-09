//
//  SportPackageView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 08.08.2023.
//

import UIKit

class SportPackageView: UIView {
    
    private var state = State.delete {
        didSet {
            setupAnimation()
        }
    }
    
    let timeAnimation: TimeInterval = 0.2
    
    private(set) var titleLabel: BaseLabel = {
        let label = BaseLabel()
        label.text = "Sport Package"
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
        actionButton.addTarget(self, action: #selector(addPack), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(titleLabel)
        addSubview(actionButton)
    
        backgroundColor = .white
    }
    
    @objc func addPack() {
        NotificationCenter.default.post(name: Notification.Name("Sport"), object: nil)
        state.toggle()
    }
}

extension SportPackageView {
    
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
    
    private func setupAnimation() {
        switch state {
            
        case .add:
            UIView.animate(withDuration: timeAnimation) {
                self.actionButton.alpha = 0.3
            } completion: { _ in
                self.actionButton.setImage(UIImage(named: "added"), for: .normal)
                self.actionButton.alpha = 1
            }
        case .delete:
            UIView.animate(withDuration: timeAnimation) {
                self.actionButton.alpha = 0.3
            } completion: { _ in
                self.actionButton.setImage(UIImage(named: "plus"), for: .normal)
                self.actionButton.alpha = 1
            }
        }
    }
}
