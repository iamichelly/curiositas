//
//  AnotherCardView.swift
//  curiositas
//
//  Created by michellyes on 21/09/22.
//

import UIKit

class AnotherCardView: UIView {

    let questionButton: SFSymbolsButton = {
        let button = SFSymbolsButton()
        let model = SFSymbolsButtonViewModel(type: .questionMark)
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

extension AnotherCardView: AnyView {
    func addSubviews() {
        
        self.addSubview(questionButton)
    }
    
    func setupConstraints() {
        
        questionButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            questionButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            questionButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32)
        ])
    }
    
    
}
