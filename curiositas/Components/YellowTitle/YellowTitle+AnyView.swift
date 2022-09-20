//
//  YellowTitle+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

extension YellowTitle: AnyView {
    func addSubviews() {}
    func setupConstraints() {}
    
    func setupAdditionalConfiguration() {
        self.textAlignment = .center
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.25
        self.font = .rounded(ofSize: 24, weight: .black)
        self.textColor = UIColor(named: ColorConstants.shared.YELLOW)
    }
}
