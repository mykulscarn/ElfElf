//
//  LoginRegisterViewController.swift
//  ElfElf
//
//  Created by Tod Brown on 4/8/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase



class LoginRegisterViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginRegisterSegmentedControl: UISegmentedControl!
    @IBOutlet weak var actionButton: UIButton!
    
    @IBAction func actionLoginButton(_ sender: UIButton)
    {
        if emailText.text != "" && passwordText.text != ""
        {
            if loginRegisterSegmentedControl.selectedSegmentIndex == 0
            {
                Auth.auth().signIn(withEmail: emailText.text!, password:  passwordText.text!, completion: { (user, error) in
                    if user != nil
                    {
                        //Sign in successful
                        self.performSegue(withIdentifier: "loginSegue", sender: self)
                    }
                    else
                    {
                        if let myError = error?.localizedDescription
                        {
                            print(myError)
                        }
                        else
                        {
                            print("Error")
                        }
                    }
                })
            }
            else  //Sign up user
            {
                Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!, completion: { (user, error) in
                    if user != nil
                    {
                        //Sign in successful
                    }
                    else
                    {
                        if let myError = error?.localizedDescription
                        {
                            print(myError)
                        }
                        else
                        {
                            print("Error")
                        }
                    }
                })
                    
                    
                
            }
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
