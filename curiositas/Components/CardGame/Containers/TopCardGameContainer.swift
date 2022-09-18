//
//  TopCardGameContainer.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

class TopCardGameContainer: UIView {
    
    weak var dataSource: OneWordCarouselDataSource? {
        didSet {
            carousel.dataSource = dataSource
        }
    }
    
    struct Constants {
        static let ARROW_LEFT = "chevron.left"
        static let ARROW_RIGHT = "chevron.right"
    }
        
    let curiosity = YellowTitle(withText: .curiosity)
    let tips = YellowTitle(withText: .tips)
    let tip = CommonTextCard(withText: "Maior")
    
    let closeButton: SFSymbolsButton = {
        let button = SFSymbolsButton()
        let model = SFSymbolsButtonViewModel(type: .close)
        button.configure(with: model)
        return button
    }()
    
    let carousel = OneWordCarousel()
    
    let curiosityDescription: UITextView = {
        let label = UITextView()
        label.textAlignment = .center
        label.font = .rounded(ofSize: 20, weight: .semibold)
        label.textColor = .white
        label.text = "O maior vulcão do Sistema Solar fica em Marte"
        label.backgroundColor = .clear
        return label
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
