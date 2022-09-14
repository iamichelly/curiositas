//
//  ThemesView.swift
//  curiositas
//
//  Created by sml on 14/09/22.
//

import UIKit

class ThemesView: UIView {

    
    let stackView = UIStackView()
    
    let questionButton: UIImageView = {
        let image = UIImageView()
    
        let symbolConfig = UIImage.SymbolConfiguration(pointSize: 57.0, weight: .bold, scale: .medium)
        let symbol = UIImage(systemName: "questionmark.circle.fill", withConfiguration: symbolConfig)?.withTintColor(UIColor(red: 0.54, green: 0.51, blue: 0.63, alpha: 1.00), renderingMode: .alwaysOriginal)

        image.image = symbol
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Temas"
        label.textColor = .white
        
        let fontSize: CGFloat = 32
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .heavy)
        let roundedFont: UIFont
        if let descriptor = systemFont.fontDescriptor.withDesign(.rounded) {
           roundedFont = UIFont(descriptor: descriptor, size: fontSize)
        } else {
            roundedFont = systemFont
        }

        label.font = roundedFont
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
