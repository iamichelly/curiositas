//
//  AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 12/09/22.
//

import Foundation


protocol AnyView: AnyObject {
    
    func addSubviews()
    func setupConstraints()
    func setupAdditionalConfiguration()
    
}

extension AnyView {
    
    func setupView(){
        addSubviews()
        setupConstraints()
        setupAdditionalConfiguration()
    }
    
    func setupAdditionalConfiguration(){}

}
