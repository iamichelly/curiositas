//
//  CallFriendsViewController.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class CallFriendsViewController: UIViewController {
    
    let callFriendsView = CallFriendsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = callFriendsView
    }

}
