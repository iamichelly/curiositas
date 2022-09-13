//
//  CuriositaButton.swift
//  curiositas
//
//  Created by alexdamascena on 13/09/22.
//

import UIKit

class CuriositaButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton(){
        var configuration = UIButton.Configuration.filled()
        configuration.background.backgroundColor = .white
        configuration.titleAlignment = .center
        configuration.cornerStyle = .capsule
        self.configuration = configuration
        self.setTitle("testando", for: .normal)
        self.setTitleColor(UIColor(named: ColorConstants.shared.PRIMARY_COLOR), for: .normal)
    }
}
