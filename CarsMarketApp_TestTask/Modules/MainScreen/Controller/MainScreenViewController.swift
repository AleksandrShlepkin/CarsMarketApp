//
//  ViewController.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    private let mainScreenView = MainScreenView()
    private let mokObject = MokCars()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainScreenView.logoCollection.delegate = self
        mainScreenView.logoCollection.dataSource = self
        mainScreenView.carsCollection.delegate = self
        mainScreenView.carsCollection.dataSource = self
    }
    
    override func loadView() {
        view = mainScreenView
    }
}

extension MainScreenViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let indexPath = collectionView.indexPathsForSelectedItems else { return }
        navigationController?.pushViewController(DetailsViewController(), animated: true)
        print("tapped")
    }
}

extension MainScreenViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case mainScreenView.logoCollection:
            return mokObject.arrayLogo.count
        case mainScreenView.carsCollection:
            return mokObject.arrayCar.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case mainScreenView.logoCollection:
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
            
        case mainScreenView.carsCollection:
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

