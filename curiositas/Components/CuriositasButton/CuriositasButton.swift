//
//  CuriositasButton.swift
//  curiositas
//
//  Created by alexdamascena on 13/09/22.
//

import UIKit

class CuriositasButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CuriositasButton {
    
    func configure(with model: CuriositasButtonViewModel){
        
        var configuration = model.type == .filled ?
        UIButton.Configuration.filled() : UIButton.Configuration.plain()
        configuration.titleAlignment = .center
        configuration.cornerStyle = .capsule
        
        let colorText = model.type == .filled ? UIColor(named: ColorConstants.shared.PRIMARY_COLOR)! : .white
                
        let mySelectedAttributedTitle = NSAttributedString(string: model.title.rawValue,
                                                           attributes: [
                                                            NSAttributedString.Key.foregroundColor: colorText,
                                                            NSAttributedString.Key.font: UIFont.rounded(ofSize: 20, weight: .bold)])
        self.setAttributedTitle(mySelectedAttributedTitle, for: .normal)
        
        if model.type == .bordered {
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor.white.cgColor
            self.layer.cornerRadius = 26
        }
        
        if model.type == .filled {
            self.tintColor = .white
        }
        
        self.configuration = configuration
    }
}

