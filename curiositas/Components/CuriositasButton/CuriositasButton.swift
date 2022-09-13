//
//  CuriositasButton.swift
//  curiositas
//
//  Created by alexdamascena on 13/09/22.
//

import UIKit

struct CuriositasButtonViewModel {
    let title: String
}


class CuriositasButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton(){
        let configuration = UIButton.Configuration.filled()
        self.configuration = configuration
    }
}

extension CuriositasButton {
    
    func configure(with model: CuriositasButtonViewModel){
        self.setTitle(model.title, for: .normal)
    }
}
