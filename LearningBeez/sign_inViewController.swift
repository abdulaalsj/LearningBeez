//
//  sign-inViewController.swift
//  LearningBeez
//
//  Created by Sumer Abdulaal on 4/16/17.
//  Copyright © 2017 Sumer Abdulaal. All rights reserved.
//

import UIKit
import FirebaseAuth
import FBSDKCoreKit
import FBSDKLoginKit

class sign_inViewController: UIViewController,FBSDKLoginButtonDelegate {
    
    @IBOutlet weak var signInButton: FBSDKLoginButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.signInButton.delegate = self
        
        
        // Extend the code sample provided in "7. Add Facebook Login Button Code"
        // In your viewDidLoad method:
        self.signInButton.readPermissions = ["public_profile", "email", "user_friends"]
        
        
        if ((FBSDKAccessToken.current()) != nil) {
            // User is logged in, do work such as go to next view controller.
            self.performSegue(withIdentifier: "signInToHoneycombSegue", sender: nil)

        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    /*
     //Start Facebook Login Button delegate methods
     */
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if let error = error {
            print(error.localizedDescription)
            return
        }
        
        //Segue to next Viewcntroller
        let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
        FIRAuth.auth()?.signIn(with: credential) { (user, error) in
            // ...
            if error != nil {
                // ...
                return
            }
            //Login Successful 
            self.performSegue(withIdentifier: "signInToHoneycombSegue", sender: nil)
        }
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        return
    }
    
    func loginButtonWillLogin(_ loginButton: FBSDKLoginButton!) -> Bool {
        return true
    }
    
    
    /*
     //End Facebook Login Button delegate methods
     */
    
    
       
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
