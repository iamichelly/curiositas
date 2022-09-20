//
//  Checkbox.swift
//  curiositas
//
//  Created by alexdamascena on 16/09/22.
//

import UIKit

class Checkbox: UIButton {
    
    private var isChecked = true
    
    let checked: UIImageView = {
        let image = UIImage(systemName: "checkmark")
        let imageView = UIImageView(image: image)
        imageView.tintColor = .white
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func toggle(){
        checked.isHidden = !isChecked
        self.isChecked = !isChecked
    }
}




