//
//  InstructionView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class InstructionView: UIScrollView {
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    let howToPlayTitle: TitleOrSubtitle = {
        let text = TitleOrSubtitle(withText: "Como jogar")
        let model = TitleOrSubtitleModel(type: .title)
        text.configure(with: model)
        return text
    }()
    
    let howToPlaySubtitle: TitleOrSubtitle = {
        let text = TitleOrSubtitle(withText: TextConstants.shared.HOW_TO_PLAY_INSTRUCTION)
        let model = TitleOrSubtitleModel(type: .subtitle)
        text.configure(with: model)
        return text
    }()
    
    let exampleTitle: TitleOrSubtitle = {
        let text = TitleOrSubtitle(withText: "Exemplo")
        let model = TitleOrSubtitleModel(type: .title)
        text.configure(with: model)
        return text
    }()
    
    let exampleSubtitle: TitleOrSubtitle = {
        let text = TitleOrSubtitle(withText: TextConstants.shared.EXAMPLE_INSTRUCTION)
        let model = TitleOrSubtitleModel(type: .subtitle)
        text.configure(with: model)
        return text
    }()
    
    let endGameTitle: TitleOrSubtitle = {
        let text = TitleOrSubtitle(withText: "Fim de jogo")
        let model = TitleOrSubtitleModel(type: .title)
        text.configure(with: model)
        return text
    }()
    
    let endGameSubtitle: TitleOrSubtitle = {
        let text = TitleOrSubtitle(withText: TextConstants.shared.END_GAME_INSTRUCTION)
        let model = TitleOrSubtitleModel(type: .subtitle)
        text.configure(with: model)
        return text
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


