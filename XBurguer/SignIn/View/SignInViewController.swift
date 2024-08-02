//
//  SignInViewController.swift
//  XBurguer
//
//  Created by Patrick Alves on 01/08/24.
//

import Foundation
import UIKit

class SignInViewController: UIViewController {
    
    let email: UITextField = {
        let ed = UITextField()
        ed.backgroundColor = .gray
        ed.placeholder = "Entre com seu Email"
        ed.translatesAutoresizingMaskIntoConstraints = false
        return ed
    }()
    let password: UITextField = {
        let ed = UITextField()
        ed.backgroundColor = .gray
        ed.placeholder = "Entre com sua Senha"
        ed.translatesAutoresizingMaskIntoConstraints = false
        return ed
        
    }()
    
   lazy var  send: UIButton = {
        let btn = UIButton()
        btn.setTitle("Entrar", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .blue
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(sendDidTap), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(email)
        view.addSubview(password)
        view.addSubview(send)
  
//        email.frame = CGRect(x: 0, y: view.bounds.size.height / 2, width: view.bounds.size.width, height: 50)
        
        let emailConstrains = [
            
            email.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10.0),
            email.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10.0),
            email.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100.0),
            email.heightAnchor.constraint(equalToConstant: 50.0),
            
            ]
        
        let passwordConstrains = [
            
            password.leadingAnchor.constraint(equalTo: email.leadingAnchor),
            password.trailingAnchor.constraint(equalTo: email.trailingAnchor),
            password.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 10.0),
            password.heightAnchor.constraint(equalToConstant: 50.0)
            
            ]
        let sendConstrains = [
            
            send.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            send.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            send.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 10.0),
            send.heightAnchor.constraint(equalToConstant: 50.0)
            
                            ]
            NSLayoutConstraint.activate(emailConstrains)
            NSLayoutConstraint.activate(passwordConstrains)
            NSLayoutConstraint.activate(sendConstrains)
        
    }
    @objc func sendDidTap(_ sender: UIButton) {
        
        print("Clicou !!!!!!!")
            
       
    }
}
