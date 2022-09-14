//
//  MeetCuriositasViewController.swift
//  curiositas
//
//  Created by alexdamascena on 13/09/22.
//

import UIKit

class MeetCuriositasViewController: UIViewController {
    
    let meetCuriositasView = MeetCuriositasView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = meetCuriositasView
        meetCuriositasView.delegate = self
    }
}

extension MeetCuriositasViewController: MeetCuriositasDelegate {
    
    func didUserTapJumpOnboarding() {
        navigationController?.setViewControllers([HomeViewController()], animated: true)
        OnboardingManager.shared.userHasSeenOnboarding()
    }
}
