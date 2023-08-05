//
//  DetailsViewController.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 04.08.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    private let detailsView = DetailsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailsView.imagesCollection.delegate = self
        detailsView.imagesCollection.dataSource = self
    }
    
    override func loadView() {
        view = detailsView
    }
}

extension DetailsViewController: UICollectionViewDelegate {
    
}

extension DetailsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: ImagesCell.identifier, for: indexPath) as? ImagesCell
        else { return UICollectionViewCell() }
        return imageCell
    }
    
    
}
