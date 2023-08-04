//
//  ImagesCollectionViewFlowLayout.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 05.08.2023.
//

import UIKit

class ImagesCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        scrollDirection = .horizontal
        itemSize = CGSize(width: 400, height: 300)
        minimumLineSpacing = 15
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
