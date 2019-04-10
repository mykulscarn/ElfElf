//
//  ComposeViewController.swift
//  ElfElf
//
//  Created by Tod Brown on 4/7/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase


class ComposeViewController: UIViewController {

    
    @IBOutlet weak var textView: UITextView!
    
    var ref: DatabaseReference?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()

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

    
    
    @IBAction func addPost(_ sender: Any) {
        
        //TODO: Post the data to Firebase
        ref?.child("Posts").childByAutoId().setValue("Hello Firebase")
        
        //Dismiss the popover
        presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    @IBAction func cancelPost(_ sender: Any) {
        
        presentingViewController?.dismiss(animated: true, completion: nil)

    }
    
    
    
    
    
    
}
