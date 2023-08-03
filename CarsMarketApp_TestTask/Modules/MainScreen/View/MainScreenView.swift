//
//  MainScreenView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import UIKit

class MainScreenView: UIView {
    
    private var arrayLogo: [Logo] = []
    
    private let logoCollection: CarsLogoCollectionView = {
        let collection = CarsLogoCollectionView()
        return collection
    }()
    
    private let carsCollection: CarsColletcionView = {
        let collection = CarsColletcionView()
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
        makeMokObject()
        logoCollection.delegate = self
        logoCollection.dataSource = self
        carsCollection.delegate = self
        carsCollection.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createUI() {
        backgroundColor = .white
        addSubview(titleLabel)
        addSubview(logoCollection)
        addSubview(carsCollection)
    }
    
    private func makeMokObject() {
        let mazda = Logo(image: UIImage(named: "mazda")!, name: "mazda")
        let bmw = Logo(image: UIImage(named: "bmw")!, name: "bmw")
        let lexus = Logo(image: UIImage(named: "lexus")!, name: "lexus")
        let toyota = Logo(image: UIImage(named: "toyota")!, name: "toyota")
        let vw = Logo(image: UIImage(named: "vw")!, name: "vw")
        let audi = Logo(image: UIImage(named: "audi")!, name: "audi")
        
        arrayLogo.append(mazda)
        arrayLogo.append(bmw)
        arrayLogo.append(lexus)
        arrayLogo.append(toyota)
        arrayLogo.append(vw)
        arrayLogo.append(audi)

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
            logoCollection.heightAnchor.constraint(equalToConstant: 80),
            
            carsCollection.topAnchor.constraint(equalTo: logoCollection.bottomAnchor, constant: 20),
            carsCollection.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            carsCollection.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            carsCollection.bottomAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.bottomAnchor, multiplier: 0),
            
        ])
    }
}

extension MainScreenView: UICollectionViewDelegate {
    
}

extension MainScreenView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case logoCollection:
            guard let cellLogo = collectionView.dequeueReusableCell(withReuseIdentifier: CarsLogoCell.identifier, for: indexPath) as? CarsLogoCell
            else { return UICollectionViewCell() }
            let logo = arrayLogo[indexPath.item]
            switch logo.name {
            case "bmw":
                cellLogo.logoImage.image = UIImage(named: "bmw")
            case "audi":
                cellLogo.logoImage.image = UIImage(named: "audi")
            case "lexus":
                cellLogo.logoImage.image = UIImage(named: "lexus")
            case "vw":
                cellLogo.logoImage.image = UIImage(named: "vw")
            case "toyota":
                cellLogo.logoImage.image = UIImage(named: "toyota")
            default:
                cellLogo.logoImage.image = UIImage(named: "mazda")

            }

            return cellLogo
            
        case carsCollection:
            guard let carsCell = collectionView.dequeueReusableCell(withReuseIdentifier: CarsCell.identifier, for: indexPath) as? CarsCell
            else { return UICollectionViewCell() }
            return carsCell
        default:
            return UICollectionViewCell()
        }
    }
}
