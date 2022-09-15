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
    
    let cardsAmountLabel: UILabel = {
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
    
    let imageBackground: UIImageView = {
        let image = UIImageView()
    
        let symbolConfig = UIImage.SymbolConfiguration(pointSize: 38.0, weight: .bold, scale: .medium)
        let symbol = UIImage(systemName: "questionmark.circle.fill", withConfiguration: symbolConfig)?.withTintColor(UIColor(red: 0.54, green: 0.51, blue: 0.63, alpha: 1.00), renderingMode: .alwaysOriginal)

        image.image = symbol
        return image
    }()
    
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
