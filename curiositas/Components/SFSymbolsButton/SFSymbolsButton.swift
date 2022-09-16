//
//  SFSymbolsButton.swift
//  curiositas
//
//  Created by sml on 15/09/22.
//

import UIKit
 

class SFSymbolsButton: UIButton {
    let buttonImage = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension SFSymbolsButton {
    
    func configure(with model: SFSymbolsButtonViewModel){
        let tintColor = UIColor(red: 0.54, green: 0.51, blue: 0.63, alpha: 1.00)
        let systemName = "questionmark.circle.fill"
    
        let symbolConfig = UIImage.SymbolConfiguration(pointSize: 38.0, weight: .heavy, scale: .medium)
        let symbol = UIImage(systemName: systemName , withConfiguration: symbolConfig)?.withTintColor(tintColor, renderingMode: .alwaysOriginal)
    
        buttonImage.image = symbol
        
        self.backgroundColor = UIColor.clear
    }
}
