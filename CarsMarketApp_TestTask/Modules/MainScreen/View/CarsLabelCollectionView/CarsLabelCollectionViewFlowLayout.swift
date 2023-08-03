//
//  CarsLogoCollectionViewFlowLayout.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import UIKit

class CarsLogoCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        scrollDirection = .horizontal
        itemSize = CGSize(width: 70, height: 70)
        minimumLineSpacing = 3
        sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
