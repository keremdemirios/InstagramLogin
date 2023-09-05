//
//  ViewController.swift
//  Instagram Login
//
//  Created by Kerem Demir on 1.09.2023.
//

import UIKit
import InstagramLogin

class ViewController: UIViewController {
    var instagramLogin: InstagramLoginViewController!
    // MARK : UI Elements
    lazy var instagramLoginButton:UIButton = {
        let instagramLoginButton = UIButton()
        instagramLoginButton.translatesAutoresizingMaskIntoConstraints = false
        instagramLoginButton.addTarget(self, action: #selector(instagmLoginTapped), for: .touchUpInside)
        instagramLoginButton.setTitle("Login with Instagram", for: .normal)
        instagramLoginButton.backgroundColor = .blue
        instagramLoginButton.layer.cornerRadius = 12
        return instagramLoginButton
    }()
    // MARK : Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configure()
        
    }
    
    // MARK : Configure
    private func configure(){
        setupUI()
    }
    
    // MARK : Setup UI
    private func setupUI(){
        view.addSubview(instagramLoginButton)
        NSLayoutConstraint.activate([
            instagramLoginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            instagramLoginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            instagramLoginButton.widthAnchor.constraint(equalToConstant: 200),
            instagramLoginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    // MARK : Functions
    
    // MARK : Actions
    @objc func instagmLoginTapped(){
        print("Instagram Login Tapped")
    }
}

