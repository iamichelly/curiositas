//
//  OnboardingManager.swift
//  curiositas
//
//  Created by alexdamascena on 13/09/22.
//

import Foundation


class OnboardingManager {
    
    struct Constants {
        static let KEY = "onboarding"
    }
    
    static let shared = OnboardingManager()
    private init(){}
    
    var wasSeen: Bool {
        return hasUserAlreadySeen != nil
    }
    
    var hasUserAlreadySeen: String? {
        return UserDefaults.standard.string(forKey: Constants.KEY)
    }
    
    func userHasSeenOnboarding(){
        UserDefaults.standard.set(Constants.KEY, forKey: Constants.KEY)
    }

}
