//
//  ViewController.swift
//  authenticationApp
//
//  Created by Youssef Mabrouk on 22/08/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextfield: UITextField!
    
    @IBOutlet weak var passTextfield: UITextField!
    
    @IBOutlet weak var addressTextfield: UITextField!
    @IBOutlet weak var confirmPassTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func registrationbttn(_ sender: Any) {
        guard let username = usernameTextfield.text, !username.isEmpty,
                     let password = passTextfield.text, !password.isEmpty,
                     let confirmPass = confirmPassTextfield.text, password == confirmPass,
                     let email = emailTextfield.text, !email.isEmpty,
                     let address = addressTextfield.text, !address.isEmpty else {
                   // Handle invalid input (e.g., show an alert)
                   return
               }
               
               // Create a new user instance
               let newUser = User(username: username, password: password, email: email, address: address)
               
               // You can now use the `newUser` object as needed
               print("User registered with username: \(newUser.username), email: \(newUser.email)")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = sb.instantiateViewController(identifier: "LoginVC")
        self.navigationController?.pushViewController(loginVC, animated: true)
           }
    
}

