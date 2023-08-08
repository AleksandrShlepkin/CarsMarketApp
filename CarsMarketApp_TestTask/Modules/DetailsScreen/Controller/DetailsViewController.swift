//
//  DetailsViewController.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 04.08.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    private let detailsView = DetailsView()
    
    var car: CarsModel
    
    init(car: CarsModel){
        self.car = car
        super.init(nibName: "DetailsViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsView.imagesCollection.delegate = self
        detailsView.imagesCollection.dataSource = self
        setupView()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(sendData),
                                               name: Notification.Name("Cart"),
                                               object: nil)
    }
    
    override func loadView() {
        view = detailsView
    }
    
    @objc private func sendData(notification: Notification) {
        let cart = CartViewController(car: car)
        navigationController?.pushViewController(cart, animated: true)
    }
}

extension DetailsViewController {
    
    private func setupView() {
        
        detailsView.carMakeLabel.text = car.carMake
        detailsView.modelLabel.text = car.model
        detailsView.doorsCountLabel.text = "Колличество дверей: \(car.doors.rawValue)"
        detailsView.powerLabel.text = "Мощность: \(car.power)"
        detailsView.typeCarLabel.text = "Класс автомобиля: \(car.type.rawValue)"
        detailsView.typeEngineLabel.text = "Тип двигателя: \(car.engine.rawValue)"
        detailsView.priceLabel.text = car.price


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
        imageCell.carImage.image = car.mainImage
        return imageCell
    }
}
