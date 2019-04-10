//
//  SuccessfulLoginRegister.swift
//  ElfElf
//
//  Created by Tod Brown on 4/8/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SuccessfulLoginRegister: UIViewController {

    
    
    @IBAction func logout(_ sender: Any)
    {
        try! Auth.auth().signOut()
        performSegue(withIdentifier: "logoutSegue", sender: self)
        
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
