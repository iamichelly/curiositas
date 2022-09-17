//
//  CommonTextCard+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

extension CommonTextCard: AnyView {
    func addSubviews() {}
    func setupConstraints() {}
    
    func setupAdditionalConfiguration() {
        self.font = .rounded(ofSize: 20, weight: .semibold)
        self.textColor = .white
        self.textAlignment = .center
    }
}
