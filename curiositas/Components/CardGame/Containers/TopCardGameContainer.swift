//
//  TopCardGameContainer.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

class TopCardGameContainer: UIView {
    
    let closeButton = CloseButton()
    let curiosity = YellowTitle(withText: .curiosity)
    let tips = YellowTitle(withText: .tips)
    let tip = CommonTextCard(withText: "Maior")
    
    let carousel: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .fill
        stack.spacing = 24
        stack.axis = .horizontal
        return stack
    }()
    
    let curiosityDescription: UITextView = {
        let label = UITextView()
        label.textAlignment = .center
        label.font = .rounded(ofSize: 20, weight: .semibold)
        label.textColor = .white
        label.text = "O maior vulcão do Sistema Solar fica em Marte"
        label.backgroundColor = .clear
        return label
    }()
    
    let beforeIcon: UIImageView = {
        let image = UIImage(systemName: "chevron.left")
        let imageView = UIImageView(image: image)
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        imageView.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return imageView
    }()
    
    let nextIcon: UIImageView = {
        let image = UIImage(systemName: "chevron.right")
        let imageView = UIImageView(image: image)
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        imageView.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
