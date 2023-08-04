//
//  DetailsView.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 04.08.2023.
//

import UIKit

class DetailsView: UIView {
    
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.showsVerticalScrollIndicator = false
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private(set) var carMakeLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var priceLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var imagesCollection: ImagesCollectionView = {
        let image = ImagesCollectionView()
        return image
    }()
    
    private(set) var modelLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var powerLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var doorsCountLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var typeCarLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    private(set) var typeEngineLabel: BaseLabel = {
        let label = BaseLabel()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(carMakeLabel)
        stackView.addArrangedSubview(priceLabel)
        stackView.addArrangedSubview(imagesCollection)
        stackView.addArrangedSubview(modelLabel)
        stackView.addArrangedSubview(powerLabel)
        stackView.addArrangedSubview(doorsCountLabel)
        stackView.addArrangedSubview(typeCarLabel)
        stackView.addArrangedSubview(typeEngineLabel)
        
        imagesCollection.delegate = self
        imagesCollection.dataSource = self
    }
    
}

extension DetailsView {
    
    private func setupConstraints() {
        
    }
}

extension DetailsView: UICollectionViewDelegate {
    
}

extension DetailsView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: ImagesCell.identifier, for: indexPath) as? ImagesCell
        else { return UICollectionViewCell() }
        return imageCell
    }
    
    
}
