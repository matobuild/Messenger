//
//  ViewController.swift
//  Messenger
//
//  Created by kittawat phuangsombat on 2020/11/20.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validataAuth()
    }
    
    private func validataAuth(){
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
        
    }
}

