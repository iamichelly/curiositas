//
//  CardStackView.swift
//  curiositas
//
//  Created by lrsv on 14/09/22.
//

import UIKit

class CardStackView : UIView, UICollisionBehaviorDelegate {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Temas"
        label.textColor = .white
        label.font = .rounded(ofSize: 32, weight: .heavy)
        return label
    }()
    
    let questionButton: SFSymbolsButton = {
        let button = SFSymbolsButton()
        let model = SFSymbolsButtonViewModel(type: .questionMark)
        button.configure(with: model)
        return button
    }()
    
    let backButton: SFSymbolsButton = {
        let button = SFSymbolsButton()
        let model = SFSymbolsButtonViewModel(type: .back)
        button.configure(with: model)
        return button
    }()
               
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
