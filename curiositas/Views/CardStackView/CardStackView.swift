//
//  CardStackView.swift
//  curiositas
//
//  Created by lrsv on 14/09/22.
//

import UIKit

class CardStackView : UIView, UICollisionBehaviorDelegate {
//    let card = CardView(frame: CGRect(x: 0, y: 0, width: 364, height: 720), cardNumber: 1, isCardDone: true)
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        
//        card.layer.cornerRadius = 32
//        card.layer.masksToBounds = false
//        card.layer.shadowColor = UIColor.black.cgColor
//        card.layer.shadowOpacity = 1
//        card.layer.shadowRadius = 32
//        card.layer.shadowOffset = CGSize(width: -1, height: -1)
//        card.isUserInteractionEnabled = true
//        card.layer.shadowPath = UIBezierPath(rect: card.bounds).cgPath

//        self.addSubview(card)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
