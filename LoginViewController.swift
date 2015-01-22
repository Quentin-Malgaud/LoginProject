//
//  LoginViewController.swift
//  LoginProject
//
//  Created by Quentin Malgaud on 22/01/15.
//  Copyright (c) 2015 Quentin Malgaud. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, CreateAccountViewControllerDelegate {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToCreateAccountSegue" {
            var createAccountVC = segue.destinationViewController as CreateAccountViewController
            createAccountVC.delegate = self
        }
    }

    @IBAction func loginButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("loginToMainSegue", sender: self)
    }

    @IBAction func createAccountButtonPressed(sender: UIButton) {
        
        self.performSegueWithIdentifier("loginToCreateAccountSegue", sender: self)
    
    }

    //CreateAccountViewControllerDelegate
    func accountCreated() {
        self.performSegueWithIdentifier("loginToMainSegue", sender: nil)
    }
}
