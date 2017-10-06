//
//  ViewController.swift
//  Login
//
//  Created by Jacek Gałka on 06.10.2017.
//  Copyright © 2017 Jacek Gałka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    //MARK: Actions
    
    @IBAction func forgotButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else { return }
        var titleToSet: String? = nil
        
        if sender == forgotUserNameButton {
            titleToSet = "Forgot User Name"
        } else if sender == forgotPasswordButton {
            titleToSet = "Forgot Password"
        } else {
            titleToSet = userNameTextField.text
        }
        
        segue.destination.navigationItem.title = titleToSet
    }
}

