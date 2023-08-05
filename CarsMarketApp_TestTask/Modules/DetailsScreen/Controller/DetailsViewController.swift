//
//  DetailsViewController.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 04.08.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    private let detailsView = DetailsView()
    
    var car: CarsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsView.imagesCollection.delegate = self
        detailsView.imagesCollection.dataSource = self
        setupView()
    }
    
    override func loadView() {
        view = detailsView
    }
}

extension DetailsViewController {
    
    private func setupView() {
        
        detailsView.carMakeLabel.text = car?.carMake
        detailsView.modelLabel.text = car?.model
        detailsView.doorsCountLabel.text = "Колличество дверей: \(car!.doors.rawValue)"
        detailsView.powerLabel.text = "Мощность: \(car!.power)"
        detailsView.typeCarLabel.text = "Класс автомобиля: \(car!.type.rawValue)"
        detailsView.typeEngineLabel.text = "Тип двигателя: \(car!.engine.rawValue)"
        detailsView.priceLabel.text = car?.price
    }
}

extension DetailsViewController: UICollectionViewDelegate {
    
}

extension DetailsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: ImagesCell.identifier, for: indexPath) as? ImagesCell
        else { return UICollectionViewCell() }
        imageCell.carImage.image = car?.mainImage
        return imageCell
    }
}
