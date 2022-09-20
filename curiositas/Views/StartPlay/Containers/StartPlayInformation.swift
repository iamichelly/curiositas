//
//  StartPlayInformation.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class StartPlayInformation: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let informationStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 16
        return stack
    }()
    
    let startPlay: UILabel = {
        let label = UILabel()
        label.text = "Comece a  Jogar!"
        label.font = .rounded(ofSize: 30, weight: .black)
        label.numberOfLines = 0
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    let startPlayDescription: UILabel = {
        let label = UILabel()
        label.text = "É só separar os grupos, escolher a carta e começar a fazer perguntas. "
        label.font = .rounded(ofSize: 18, weight: .medium)
        label.numberOfLines = 0
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()

}


