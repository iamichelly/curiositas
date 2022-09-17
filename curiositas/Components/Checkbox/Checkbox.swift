//
//  Checkbox.swift
//  curiositas
//
//  Created by alexdamascena on 16/09/22.
//

import UIKit

class Checkbox: UIView {
    
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


extension Checkbox: AnyView {
    
    func addSubviews() {
        self.addSubview(checked)
    }
    
    func setupConstraints() {
        checked.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            checked.centerXAnchor.constraint(equalTo: centerXAnchor),
            checked.centerYAnchor.constraint(equalTo: centerYAnchor),
            checked.heightAnchor.constraint(equalToConstant: 20),
            checked.widthAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.backgroundColor = UIColor(named: ColorConstants.shared.CHECKBOX)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 4
        checked.isHidden = true
    }
    
}
