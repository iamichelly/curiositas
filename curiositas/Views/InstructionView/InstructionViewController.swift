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
    }
    
    func setupAdditionalConfiguration(){
        navigationController?.navigationBar.barTintColor = UIColor(named: ColorConstants.shared.PRIMARY_COLOR)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor(named: ColorConstants.shared.PRIMARY_COLOR) ?? .black]
    }
    
}
