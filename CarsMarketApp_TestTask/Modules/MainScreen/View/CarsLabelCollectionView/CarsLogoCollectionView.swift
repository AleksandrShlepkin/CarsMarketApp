//
//  CarsLogoCollectionView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import UIKit

class CarsLogoCollectionView: UICollectionView {
    
    private let flowLayout = CarsLogoCollectionViewFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: flowLayout)
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        showsHorizontalScrollIndicator = false
        register(CarsLogoCell.self, forCellWithReuseIdentifier: CarsLogoCell.identifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
