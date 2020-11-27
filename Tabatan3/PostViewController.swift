//
//  PostViewController.swift
//  Tabatan3
//
//  Created by 竹村明日香 on 2020/11/27.
//  Copyright © 2020 Takemura assan. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth


class PostViewController: UIViewController {
    
    @IBOutlet var nameText: UITextField!
    @IBOutlet var toreText: UITextField!
    @IBOutlet var tourokuButton: UIButton!
    var user: User!
    var key: String!
    var users: [User]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
        }
        tourokuButton.layer.cornerRadius = 10.0
    }
    
  
    @IBAction func touroku() {
        
        var ref: DatabaseReference!
        ref = Database.database().reference()
        
        var newUser = User()
        newUser.name = nameText.text!
        newUser.tore = toreText.text!
        
        ref.child("Users").childByAutoId().setValue(newUser.toDictionary)
        
        let TimerViewController = self.storyboard?.instantiateViewController(withIdentifier: "first") as! TimerViewController
        self.present(TimerViewController, animated: true, completion: nil)
        
        
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
