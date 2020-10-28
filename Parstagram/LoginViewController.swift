//
//  LoginViewController.swift
//  Parstagram
//
//  Created by Aman Dhruva Thamminana on 10/27/20.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameFeild: UITextField!
    @IBOutlet weak var passwordFeild: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignin(_ sender: Any) {
    }
    
    
    @IBAction func onSignup(_ sender: Any) {
        var user = PFUser()
        user.username = usernameFeild.text
        user.password = passwordFeild.text
        user.signUpInBackground { (sucess, error) in
            if sucess{
                self.performSegue(withIdentifier: "LoginSegue", sender: nil)
        }
            else{
                print("Error: \(error?.localizedDescription) ")
            }
            
        }
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
