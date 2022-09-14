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
        return page
    }()
    let initialPage = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupPageControlers()
        pageControl.numberOfPages = pages.count
        pageControl.currentPage = initialPage
        print(initialPage)
        setupConstraints()
        // Do any additional setup after loading the view.
    }
    
    private func setupPageControlers(){
        dataSource = self
        delegate = self
        
        pageControl.addTarget(self, action: #selector(didUserTapPageControl), for: .valueChanged)
        
        setViewControllers([pages[initialPage]], direction: .forward, animated: true)
        pageControl.currentPage = 0
    }
    
    @objc func didUserTapPageControl(_ sender: UIPageControl){
        setViewControllers([pages[sender.currentPage]], direction: .forward, animated: true)
    }
    
    private func setupConstraints(){
        view.addSubview(pageControl)
        
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pageControl.widthAnchor.constraint(equalTo: view.widthAnchor),
            pageControl.heightAnchor.constraint(equalToConstant: 20),
            pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -28)
        ])
    }
}

extension OnboardingViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController) else { return nil }
        let newViewController = index == 0 ? pages.last : pages[index-1]
        return newViewController
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController) else { return nil }
        let newViewController = index < pages.count - 1 ? pages[index+1] : pages.first
        return newViewController
    }
}

extension OnboardingViewController: UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        guard let viewControllers = pageViewController.viewControllers else { return }
        guard let index = pages.firstIndex(of: viewControllers[0]) else { return }
        
        pageControl.currentPage = index
    }
}
