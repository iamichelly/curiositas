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
    }
    
    func setupConstraints(){
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pageControl.widthAnchor.constraint(equalTo: view.widthAnchor),
            pageControl.heightAnchor.constraint(equalToConstant: 20),
            pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -28)
        ])
    }
    
    func setupAdditionalConfiguration() {
        pageControl.addTarget(self, action: #selector(didUserTapPageControl), for: .valueChanged)
        setViewControllers([pages[0]], direction: .forward, animated: true)
        pageControl.numberOfPages = pages.count
    }
}
