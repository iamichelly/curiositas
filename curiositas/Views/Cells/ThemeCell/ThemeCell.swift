//
//  ThemeCellCollectionViewCell.swift
//  curiositas
//
//  Created by sml on 15/09/22.
//

import UIKit

class ThemeCell: UICollectionViewCell {
    public static let identifier = "theme-cell"
    
    let themeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .rounded(ofSize: 25, weight: .bold)
        return label
    }()
    
    let cardsAmountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .rounded(ofSize: 17, weight: .semibold)
        return label
    }()
    
    let imageBackground: UIImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func draw(_ theme: Theme){
        imageBackground.image = UIImage(named:theme.image)
        cardsAmountLabel.text = "\(theme.cardsPlayed)/\(theme.cardsAmount)"
        themeLabel.text = theme.theme
    }
    
    
}
