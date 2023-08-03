//
//  MainScreenView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import UIKit

class MainScreenView: UIView {
    
    private let logoCollection: CarsLogoCollectionView = {
        let collection = CarsLogoCollectionView()
        return collection
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 50)
        label.text = "Cars Market"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
        createConstaraints()
        logoCollection.delegate = self
        logoCollection.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createUI() {
        backgroundColor = .white
        addSubview(titleLabel)
        addSubview(logoCollection)
    }
}

extension MainScreenView {
    
    private func createConstaraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),
            titleLabel.heightAnchor.constraint(equalToConstant: 50),
            
            logoCollection.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            logoCollection.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            logoCollection.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            logoCollection.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
}

extension MainScreenView: UICollectionViewDelegate {
    
}

extension MainScreenView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarsLogoCell.identifier, for: indexPath) as? CarsLogoCell
        else { return UICollectionViewCell() }
        
        return cell
    }
    
    
}
