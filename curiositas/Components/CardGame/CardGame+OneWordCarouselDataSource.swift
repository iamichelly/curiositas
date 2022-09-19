//
//  CardGame+OneWordCarouselDataSource.swift
//  curiositas
//
//  Created by alexdamascena on 18/09/22.
//

import UIKit


extension CardGame: OneWordCarouselDataSource {
    
    func didUserTapNextWordCarousel() -> String {
        tipIndex = (tipIndex+1) % tips.count
        return tips[tipIndex]
    }
    
    func didUserTapBeforeWordCarousel() -> String {
        tipIndex = (tipIndex-1 < 0) ? tips.count-1 : tipIndex - 1
        return tips[tipIndex]
    }
    
    func setFirstWordAppears() -> String {
        return tips[0]
    }
}
