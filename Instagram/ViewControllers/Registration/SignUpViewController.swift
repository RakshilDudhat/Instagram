//
//  SignUpViewController.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 13/03/23.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var fullnameTextFiled: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var passwordTextFiled: UITextField!
    @IBOutlet weak var usernameTextFiled: UITextField!
    @IBOutlet weak var emailTextFiled: UITextField!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var instagramImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let _: LogInViewController = storyBoard.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func signUpButton(_ sender: UIButton) {
        
    }
}
