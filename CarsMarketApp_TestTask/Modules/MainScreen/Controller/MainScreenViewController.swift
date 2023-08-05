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
        switch collectionView {
        case mainScreenView.carsCollection:
            if mokObject.sortedArray.isEmpty {
                let car = mokObject.arrayCar[indexPath.row]
                let detailsController = DetailsViewController()
                detailsController.car = car
                navigationController?.pushViewController(detailsController, animated: true)
            } else {
                let car = mokObject.sortedArray[indexPath.row]
                let detailsController = DetailsViewController()
                detailsController.car = car
                navigationController?.pushViewController(detailsController, animated: true)
            }
        case mainScreenView.logoCollection:
            let logo = mokObject.arrayLogo[indexPath.row]
            mokObject.sortedCarsArray(name: logo.name)
            mainScreenView.carsCollection.reloadData()
            print("\(logo.name)")
        default:
            break
        }
    }
}

extension MainScreenViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case mainScreenView.logoCollection:
            return mokObject.arrayLogo.count
        case mainScreenView.carsCollection:
            if mokObject.sortedArray.isEmpty {
                return mokObject.arrayCar.count
            } else {
                return mokObject.sortedArray.count
            }
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
            case "BMW":
                cellLogo.logoImage.image = UIImage(named: "bmw")
            case "Audi":
                cellLogo.logoImage.image = UIImage(named: "audi")
            case "Lexus":
                cellLogo.logoImage.image = UIImage(named: "lexus")
            case "VW":
                cellLogo.logoImage.image = UIImage(named: "vw")
            case "Toyota":
                cellLogo.logoImage.image = UIImage(named: "toyota")
            case "Mercedes":
                cellLogo.logoImage.image = UIImage(named: "mercedes")
            case "Mazda":
                cellLogo.logoImage.image = UIImage(named: "mazda")
            default:
                cellLogo.logoImage.image = UIImage(named: "all")
            }
            
            return cellLogo
            
        case mainScreenView.carsCollection:
            guard let carsCell = collectionView.dequeueReusableCell(withReuseIdentifier: CarsCell.identifier, for: indexPath) as? CarsCell
            else { return UICollectionViewCell() }
            if mokObject.sortedArray.isEmpty {
                let car = mokObject.arrayCar[indexPath.row]
                carsCell.carMakeLabel.text = car.carMake
                carsCell.mainImage.image = car.mainImage
                carsCell.modelLabel.text = car.model
                carsCell.typeEngineLabel.text = car.price
                return carsCell
            } else {
                let car = mokObject.sortedArray[indexPath.row]
                carsCell.carMakeLabel.text = car.carMake
                carsCell.mainImage.image = car.mainImage
                carsCell.modelLabel.text = car.model
                carsCell.typeEngineLabel.text = car.price
                return carsCell
            }
        default:
            return UICollectionViewCell()
        }
    }
}
