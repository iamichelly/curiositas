//
//  SFSymbolsButton.swift
//  curiositas
//
//  Created by sml on 15/09/22.
//

import UIKit
 

class SFSymbolsButton: UIButton {
    let buttonImage = UIImageView()
    weak var delegate: SFSymbolsButtonDelegate?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        self.addTarget(self, action: #selector(didUserTapQuestionButton), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension SFSymbolsButton {
    
    func configure(with model: SFSymbolsButtonViewModel){
        let tintColor = model.type == .questionMark ? UIColor(red: 0.54, green: 0.51, blue: 0.63, alpha: 1.00) : .white
        let systemName = model.type == .questionMark ? "questionmark.circle.fill" : (model.type == .back ? "chevron.left" :"xmark.circle.fill")
    
        let symbolConfig = model.type == .back ? UIImage.SymbolConfiguration(pointSize: 18.0, weight: .bold, scale: .large) : UIImage.SymbolConfiguration(pointSize: 38.0, weight: .heavy, scale: .medium)
        let symbol = UIImage(systemName: systemName , withConfiguration: symbolConfig)?.withTintColor(tintColor, renderingMode: .alwaysOriginal)
    
        buttonImage.image = symbol
        
        self.backgroundColor = UIColor.clear
    }
    
    @objc func didUserTapQuestionButton() {
        delegate?.didUserTapButton(button: self)
    }
    
    
}
