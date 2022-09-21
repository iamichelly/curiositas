//
//  ThemesView.swift
//  curiositas
//
//  Created by sml on 14/09/22.
//

import UIKit

typealias UICollectionViewProtocol = UICollectionViewDataSource & UICollectionViewDelegate

class ThemesView: UIView {
    
    let popUp: Popup = {
        let popup = Popup()
        let model = PopupViewModel(type: .mediatorPopUp)
        popup.configure(with: model)
        return popup
    }()

    let questionButton: SFSymbolsButton = {
        let button = SFSymbolsButton()
        let model = SFSymbolsButtonViewModel(type: .questionMark)
        button.configure(with: model)
        return button
    }()

    let themesStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 0
        return stackView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Temas"
        label.textColor = .white
        label.font = .rounded(ofSize: 32, weight: .heavy)
        return label
    }()
    
    let questionButtonContainer = UIView()
    let titleLabelContainer = UIView()
    let themesCollectionViewContainer = UIView()


    let themesCollectionView: UICollectionView = {
        let width = UIScreen.main.bounds.width  - 64
        let cellSize = width/2 - 6
        let layout = UICollectionViewFlowLayout()
                layout.scrollDirection = .vertical
                layout.minimumLineSpacing = 10
                layout.itemSize = CGSize(width: cellSize, height: cellSize)

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false

        collectionView.register(ThemeCell.self, forCellWithReuseIdentifier: ThemeCell.identifier)
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        popUp.openPopup()


    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension ThemesView {
    
    func setCollectionViewDataSourceDelegate <obj: UICollectionViewProtocol> (
           dataSourceDelegate: obj) {
           themesCollectionView.dataSource = dataSourceDelegate
           themesCollectionView.delegate = dataSourceDelegate
           themesCollectionView.reloadData()
    }
    
    
}
