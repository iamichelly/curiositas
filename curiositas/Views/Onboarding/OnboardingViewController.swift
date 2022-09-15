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
        CallFriendsViewController()
    ]
    
    let pageControl : UIPageControl = {
        let page = UIPageControl()
        page.currentPageIndicatorTintColor = UIColor(named: ColorConstants.shared.DOT_SELECTED)
        page.pageIndicatorTintColor = UIColor(named: ColorConstants.shared.DOT)
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




