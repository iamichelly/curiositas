//
//  InstructionView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class InstructionView: UIScrollView {
    
    let howToPlay = TitleAndSubtitle("Como jogar", TextConstants.shared.HOW_TO_PLAY_INSTRUCTION)
    let example = TitleAndSubtitle("Exemplo", TextConstants.shared.EXAMPLE_INSTRUCTION)
    let endGame = TitleAndSubtitle("Fim de jogo", TextConstants.shared.END_GAME_INSTRUCTION)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        let widthScreen = UIScreen.main.bounds.width
        howToPlay.frame = CGRect(x: 0, y: 0, width: widthScreen, height: 560)
        example.frame = CGRect(x: 0, y: 560, width: widthScreen, height: 180)
        endGame.frame = CGRect(x: 0, y: 740, width: widthScreen, height: 180)
    }
}

extension InstructionView: AnyView {
    
    func addSubviews() {
        self.addSubview(howToPlay)
        self.addSubview(example)
        self.addSubview(endGame)
    }
    
    func setupConstraints() {}
    
    func setupAdditionalConfiguration(){
        self.backgroundColor = UIColor(named: ColorConstants.shared.PRIMARY_COLOR)
        self.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 920)
    }
}
