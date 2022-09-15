//
//  TestViewController.swift
//  curiositas
//
//  Created by sml on 15/09/22.
//

import UIKit

class TestViewController: UIViewController {

    let testView = TestView()
    
    private var theme: Theme?
    
    init(with theme: Theme){
        super.init(nibName: nil, bundle: nil)
        self.theme = theme
        testView.titleLabel.text = theme.theme

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = testView
        self.view.backgroundColor = UIColor(red: 0.13, green: 0.08, blue: 0.30, alpha: 1.00)

        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    


}

