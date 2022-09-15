//
//  OnboardingViewController+UIPageViewControllerDataSource.swift
//  curiositas
//
//  Created by alexdamascena on 14/09/22.
//

import UIKit

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
