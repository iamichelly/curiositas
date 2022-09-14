//
//  ThemesView.swift
//  curiositas
//
//  Created by sml on 14/09/22.
//

import UIKit

class ThemesView: UIView {

    
    let stackView = UIStackView()
    
    let questionButton = UIImageView()
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    let questionButtonContainer = UIView()
    let titleLabelContainer = UIView()
    
    let themesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
               layout.scrollDirection = .horizontal

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false

        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "themeCell")
        return collectionView
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
