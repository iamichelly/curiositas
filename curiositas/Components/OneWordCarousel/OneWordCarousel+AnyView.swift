//
//  OneWordCarousel+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 18/09/22.
//

import UIKit

extension OneWordCarousel: AnyView {
    
    func addSubviews() {
        self.addArrangedSubview(beforeIcon)
        self.addArrangedSubview(tip)
        self.addArrangedSubview(nextIcon)
    }
    
    func setupConstraints() {}
    
    func setupAdditionalConfiguration() {
        
        self.alignment = .fill
        self.spacing = 24
        self .axis = .horizontal
        
        let gestureNext = UITapGestureRecognizer(target: self, action: #selector(didTapNext))
        nextIcon.isUserInteractionEnabled = true
        nextIcon.addGestureRecognizer(gestureNext)
        
        let gestureBefore = UITapGestureRecognizer(target: self, action: #selector(didTapBefore))
        beforeIcon.isUserInteractionEnabled = true
        beforeIcon.addGestureRecognizer(gestureBefore)
    }
    
    @objc func didTapNext(){
        let newWord = dataSource?.didUserTapNextWordCarousel()
        tip.changeText(toValue: newWord ?? "")
    }
    
    @objc func didTapBefore(){
        let newWord = dataSource?.didUserTapBeforeWordCarousel()
        tip.changeText(toValue: newWord ?? "")
    }
}
