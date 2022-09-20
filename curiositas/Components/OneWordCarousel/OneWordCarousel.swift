//
//  OneWordCarousel.swift
//  curiositas
//
//  Created by alexdamascena on 18/09/22.
//

import UIKit

class OneWordCarousel: UIStackView {
    
    var firstWord: String = ""
    
    weak var dataSource: OneWordCarouselDataSource? {
        didSet {
            firstWord = dataSource?.setFirstWordAppears() ?? ""
            tip.changeText(toValue: firstWord)
        }
    }
        
    struct Constants {
        static let ARROW_LEFT = "chevron.left"
        static let ARROW_RIGHT = "chevron.right"
    }

    let tip = CommonTextCard()
    
    let beforeIcon: UIImageView = {
        let image = UIImage(systemName: Constants.ARROW_LEFT)
        let imageView = UIImageView(image: image)
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        imageView.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return imageView
    }()
    
    let nextIcon: UIImageView = {
        let image = UIImage(systemName: Constants.ARROW_RIGHT)
        let imageView = UIImageView(image: image)
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        imageView.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        tip.changeText(toValue: firstWord)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}






