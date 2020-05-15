//
//  AuthViewController.swift
//  Secret Chat
//
//  Created by Andrey Goncharov on 15.05.2020.
//  Copyright © 2020 Andrey Goncharov. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {
    
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "the-social"), contentMode: .scaleAspectFit)
    
    let googleLabel = UILabel(text: "Get Started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let alreadyOnBoardLabel = UILabel(text: "Already onboard?")
    
    let googleButton = UIButton(title: "Google", titleColor: .black, backgroundColor: .white, isShadow: true)
    let emailButton = UIButton(title: "Email", titleColor: .white, backgroundColor: .buttonDark())
    let loginButton = UIButton(title: "Login", titleColor: .buttonRed(), backgroundColor: .white, isShadow: true)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupConstraints()
    }
}
// MARK: - Setup Constraints
extension AuthViewController {
    private func setupConstraints() {
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let googleView = ButtonFormView(label: googleLabel, button: googleButton)
        let emailView = ButtonFormView(label: emailLabel, button: emailButton)
        let loginView = ButtonFormView(label: alreadyOnBoardLabel, button: loginButton)
        
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
        stackView.translatesAutoresizingMaskIntoConstraints = false

        
        view.addSubview(logoImageView)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 160),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
    }
}
// MARK: - SwiftUI
// С помощью кода ниже мы можем вызвать режим предпросмотра Canvas
import SwiftUI

struct AuthVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    
    struct ContainerView: UIViewControllerRepresentable {
        let viewController = AuthViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<AuthVCProvider.ContainerView>) -> AuthViewController {
            return viewController
        }
        func updateUIViewController(_ uiViewController: AuthVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<AuthVCProvider.ContainerView>) {
        }
    }
}

