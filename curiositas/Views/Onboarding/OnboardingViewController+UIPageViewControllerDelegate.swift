//
//  OnboardingViewController+UIPageViewControllerDelegate.swift
//  curiositas
//
//  Created by alexdamascena on 14/09/22.
//

import UIKit

extension OnboardingViewController: UIPageViewControllerDelegate {

    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        guard let viewControllers = pageViewController.viewControllers else { return }
        guard let index = pages.firstIndex(of: viewControllers[0]) else { return }

        pageControl.currentPage = index
    }
}
