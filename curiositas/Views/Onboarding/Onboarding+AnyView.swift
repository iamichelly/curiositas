//
//  Onboarding+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 14/09/22.
//

import UIKit


extension OnboardingViewController: AnyView {
    func addSubviews() {
        view.addSubview(pageControl)
        view.addSubview(jumpOnboardingLabel)
    }
    
    func setupConstraints(){
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pageControl.widthAnchor.constraint(equalTo: view.widthAnchor),
            pageControl.heightAnchor.constraint(equalToConstant: 20),
            pageControl.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12)
        ])
        
        jumpOnboardingLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            jumpOnboardingLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -12),
            jumpOnboardingLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
        ])
    }
    
    func setupAdditionalConfiguration() {
        pageControl.addTarget(self, action: #selector(didUserTapPageControl), for: .valueChanged)
        setViewControllers([pages[0]], direction: .forward, animated: true)
        pageControl.numberOfPages = pages.count
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapJumpOnboarding))
        jumpOnboardingLabel.isUserInteractionEnabled = true
        jumpOnboardingLabel.addGestureRecognizer(gesture)
    }
}
