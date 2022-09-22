//
//  InstructionViewController.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class InstructionViewController: UIViewController {
    
    let instructionView = InstructionView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = instructionView
        setupAdditionalConfiguration()
        navigationController?.setNavigationBarHidden(false, animated: false)

    }
    
    func setupAdditionalConfiguration(){
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.13, green: 0.08, blue: 0.30, alpha: 1.00)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor(named: ColorConstants.shared.PRIMARY_COLOR) ?? .black]
    }
    
}
