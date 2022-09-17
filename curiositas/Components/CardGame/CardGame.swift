//
//  CardGame.swift
//  curiositas
//
//  Created by alexdamascena on 16/09/22.
//

import UIKit

class CardGame: UIView {

    let cardStack: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.axis = .vertical
        return stack
    }()
        
    let topCardGameContainer = TopCardGameContainer()
    let bottomCardGameContainer = BottomCardGameContainer()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
