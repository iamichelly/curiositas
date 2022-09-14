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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        delegate = self
        setupView()
    }
    
    @objc func didUserTapPageControl(_ sender: UIPageControl){
        setViewControllers([pages[sender.currentPage]], direction: .forward, animated: true)
    }

}




