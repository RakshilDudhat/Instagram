//
//  ViewController.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 13/03/23.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var simpleLabel: UILabel!
    @IBOutlet weak var forgetedPasswordTextFiled: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var passwordTextFiled: UITextField!
    @IBOutlet weak var userNameTextFiled: UITextField!
    @IBOutlet weak var instagramImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tappedLogInButton(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let tabbarViewController: TabbarViewController = storyBoard.instantiateViewController(withIdentifier: "TabbarViewController") as! TabbarViewController
        navigationController?.pushViewController(tabbarViewController, animated: true)
    }
    
    @IBAction func tappedForgetedPasswordButton(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let forgetedPasswordViewController: ForgetedPasswordViewController = storyBoard.instantiateViewController(withIdentifier: "ForgetedPasswordViewController") as! ForgetedPasswordViewController
        navigationController?.pushViewController(forgetedPasswordViewController, animated: true)
    }
    
    @IBAction func TappedSignUpButton(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let signUpViewController: SignUpViewController = storyBoard.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        navigationController?.pushViewController(signUpViewController, animated: true)
    }
    
}

