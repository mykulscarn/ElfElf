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
        
        ref?.child("Posts").childByAutoId().setValue("E.Payton - 21.7, T.Rozier - 34.8, J.Crawford - 66.5, J.Harden - 57.5, P.George - 52.3, M.Hezonja - 0, D.Theis - 7.1, J.Jones - 44.5, J.Okafor - 42.9.... Total = 327.3..... WHAT WENT WRONG: M.Hezonja/D.Theis...... SF: M.Harkless - 47.6, PF: L.Kornet - 51.6")
        
   //     ref?.child("Posts").childByAutoId().setValue("K.Irving - 41, E.Payton - 60.2, D.Mitchell - 33.9, J.Harden - 59.1, D.Bembry - 27.1, K.Knox - 37.9, R.Spalding - 18.8, T.Lyles - 26.8, M.Plumlee - 43.2.... Total = 329.2")
        
  //      ref?.child("Posts").childByAutoId().setValue("R.Westbrook - 50.1, T.Burke - 17.5, T.Dorsey - 28.3, D.Wright - 65, N.Bjelica - 16.6, M.Hezonja - 50.7, J.Jackson - 59.3, J.Randle - 47.3, N.Vucevic - 45.2.... Total = 363.4")
        
        
//        ref?.child("Posts").childByAutoId().setValue("E.Payton - 21.7, T.Rozier - 34.8, J.Crawford - 66.5, J.Harden - 57.5, P.George - 52.3, M.Hezonja - 0, D.Theis - 7.1, J.Jones - 44.5, J.Okafor - 42.9.... Total = 327.3")
        
        
        //Dismiss the popover
        presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    @IBAction func cancelPost(_ sender: Any) {
        
        presentingViewController?.dismiss(animated: true, completion: nil)

    }
    
    
    
    
    
    
}
