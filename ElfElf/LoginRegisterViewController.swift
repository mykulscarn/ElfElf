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



class LoginRegisterViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPwField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    let picker = UIImagePickerController()
    var userStorage: StorageReference!
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        let storage = Storage.storage().reference(forURL: "gs://elfelf-bd143.appspot.com")
        ref = Database.database().reference()
        userStorage = storage.child("users")
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func selectPicturePressed(_ sender: Any) {
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        
        present(picker, animated: true, completion: nil)
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            self.imageView.image = image
            nextBtn.isHidden = false
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func nextPressed(_ sender: Any) {
        
       guard nameField.text != "", emailField.text != "", passwordField.text != "", confirmPwField.text != "" else {return}
        
        if passwordField.text == confirmPwField.text {
            Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!) { (user, error) in
                if let error = error {
                    print (error.localizedDescription)
                }
                if let user = user {
                    let fileName = "\(user.user.uid).jpg"
                    let imageRef = self.userStorage.child(fileName)
                    let changeRequest = Auth.auth().currentUser!.createProfileChangeRequest()
                    changeRequest.displayName = self.nameField.text!
                    changeRequest.commitChanges(completion: nil)
                    let data = UIImage.jpegData(self.imageView.image!)

                   // doesnt work up until 42:25 of vid        let imageRef = self.userStorage.child("\(user.uid).jpg")
                    
                    let uploadTask = imageRef.putData(data, metadata: nil, completion: { (metadata, error) in
                        
                    
                    //putData(data, metadata: nil, completion: { (metadata, error) in
                    
                        if err != nil {
                            print(err!.localizedDescription)
                        }
                        imageRef.downloadURL(completion: { (url, er) in
                            if er != nil {
                                print(er!.localizedDescription)
                            }
                            
                            if let url = url {
                                let userInfo: [String : Any] = ["uid" : user.user.uid,
                                    "full name" : self.nameField.text!,
                                    "urlToImage" : url.absoluteString]
                                
                                self.ref.child("users").child(user.uid).setValue(userInfo)
                                
                                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController(withIdentifier: "usersVC")
                                
                                self.present(vc, animated: true, completion: nil)
                                
                            
                            }
                            
                        })
                        
                    })
                    
                    uploadTask.resume()
                    
                }
            }
        } else {
            print("Password does not match")
        }
        
        }
    }
 
