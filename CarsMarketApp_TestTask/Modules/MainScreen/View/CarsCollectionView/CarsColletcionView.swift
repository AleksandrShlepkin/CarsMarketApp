//
//  CarsColletcionView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import UIKit

class CarsColletcionView: UICollectionView {
    
    private let flowLayout = CarsCollectionViewFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: flowLayout)
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        showsVerticalScrollIndicator = false
        register(CarsCell.self, forCellWithReuseIdentifier: CarsCell.identifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
