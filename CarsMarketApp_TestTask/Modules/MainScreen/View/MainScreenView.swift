//
//  MainScreenView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import UIKit

class MainScreenView: UIView {
    
    private let mokObject = MokCars()
    
    private(set) var logoCollection: CarsLogoCollectionView = {
        let collection = CarsLogoCollectionView()
        return collection
    }()
    
    private(set) var carsCollection: CarsColletcionView = {
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
    
}

extension MainScreenView {
    
    private func createConstaraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),
            titleLabel.heightAnchor.constraint(equalToConstant: 50),
            
            logoCollection.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            logoCollection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            logoCollection.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            logoCollection.heightAnchor.constraint(equalToConstant: 80),
            
            carsCollection.topAnchor.constraint(equalTo: logoCollection.bottomAnchor, constant: 20),
            carsCollection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            carsCollection.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            carsCollection.bottomAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.bottomAnchor, multiplier: 0),
            
        ])
    }
}

extension MainScreenView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let indexPath = collectionView.indexPathsForSelectedItems else { return }
//        controller.navigationController?.pushViewController(DetailsViewController(), animated: true)
        print("tapped")
        
    }
}

extension MainScreenView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case logoCollection:
            return mokObject.arrayLogo.count
        case carsCollection:
            return mokObject.arrayCar.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case logoCollection:
            guard let cellLogo = collectionView.dequeueReusableCell(withReuseIdentifier: CarsLogoCell.identifier, for: indexPath) as? CarsLogoCell
            else { return UICollectionViewCell() }
            let logo = mokObject.arrayLogo[indexPath.item]
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
            case "mercedes":
                cellLogo.logoImage.image = UIImage(named: "mercedes")
            default:
                cellLogo.logoImage.image = UIImage(named: "mazda")
                
            }
            
            return cellLogo
            
        case carsCollection:
            guard let carsCell = collectionView.dequeueReusableCell(withReuseIdentifier: CarsCell.identifier, for: indexPath) as? CarsCell
            else { return UICollectionViewCell() }
            let car = mokObject.arrayCar[indexPath.row]
            carsCell.carMakeLabel.text = car.carMake
            carsCell.mainImage.image = car.mainImage
            carsCell.modelLabel.text = car.model
            carsCell.typeEngineLabel.text = car.price
            return carsCell
        default:
            return UICollectionViewCell()
        }
    }
}
