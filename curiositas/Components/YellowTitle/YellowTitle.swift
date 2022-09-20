//
//  YellowTitle.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

class YellowTitle: UITextField {
    
    init(withText text: YellowTitleType){
        super.init(frame: .zero)
        setupView()
        self.text = text.rawValue
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


