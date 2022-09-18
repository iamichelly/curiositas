//
//  CommonTextCard.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

class CommonTextCard: UILabel {
    
    init(withText text: String){
        super.init(frame: .zero)
        self.text = text
        setupView()
    }
    
    init(){
        super.init(frame: .zero)
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeText(toValue text: String){
        self.text = text
    }
}
