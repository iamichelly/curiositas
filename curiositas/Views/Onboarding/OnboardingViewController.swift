//
//  OnboardingViewController.swift
//  curiositas
//
//  Created by alexdamascena on 14/09/22.
//

import UIKit

class OnboardingViewController: UIPageViewController {
    
    let pages: [UIViewController] = [
        MeetCuriositasViewController(),
        MeetCuriositasViewController()
    ]
    
    let pageControl : UIPageControl = {
        let page = UIPageControl()
        page.currentPageIndicatorTintColor = .black
        page.pageIndicatorTintColor = .systemRed
        page.currentPage = 0
        return page
    }()
        
    let jumpOnboardingLabel: UILabel = {
        let label = UILabel()
        label.text = "pular"
        label.font = .rounded(ofSize: 18, weight: .heavy)
        label.textColor = .white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        delegate = self
        setupView()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapJumpOnboarding))
        jumpOnboardingLabel.isUserInteractionEnabled = true
        jumpOnboardingLabel.addGestureRecognizer(gesture)
    }
    
    @objc func didUserTapPageControl(_ sender: UIPageControl){
        setViewControllers([pages[sender.currentPage]], direction: .forward, animated: true)
    }
    
    @objc func didTapJumpOnboarding(){
        jumpOnboardingLabel.isHidden = true
        pageControl.isHidden = true
//        OnboardingManager.shared.userHasSeenOnboarding()
        let home = HomeViewController()
        setViewControllers([home], direction: .forward, animated: true)
    }

}




