//
//  BottomCardGameContainer.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

class BottomCardGameContainer: UIView {
    
    let checkbox = Checkbox()
    let keyWords = YellowTitle(withText: .keyWords)
    
    let firstGroup = CommonTextCard(withText: "Time 1: Vulcão")
    let secondGroup = CommonTextCard(withText: "Time 2: Marte")
    
    let checkView = UIView()

    let markAsDoneLabel: UILabel = {
        let label = UILabel()
        label.font = .rounded(ofSize: 16, weight: .semibold)
        label.textColor = .white
        label.text = "Marcar como concluído"
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
