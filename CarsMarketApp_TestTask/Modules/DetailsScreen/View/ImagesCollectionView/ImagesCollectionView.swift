//
//  ImagesCollectionView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 05.08.2023.
//

import UIKit

class ImagesCollectionView: UICollectionView {
    
    private let flowLayout = ImagesCollectionViewFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: flowLayout)
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        showsHorizontalScrollIndicator = false
        register(ImagesCell.self, forCellWithReuseIdentifier: ImagesCell.identifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
