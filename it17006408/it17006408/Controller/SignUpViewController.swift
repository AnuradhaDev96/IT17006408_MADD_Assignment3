//
//  SignUpViewController.swift
//  it17006408
//
//  Created by Anuradha Hewa Siribaddana on 2022-05-03.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
             // Do any additional setup after loading the view.
    }
    
    @IBAction func navigateBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onTapSignUpButton(_ sender: Any) {
        if (txtFullName.text != "" && txtEmail.text != "" && txtPassword.text != "" && txtConfirmPassword.text != "") {
            
            if (txtPassword.text != txtConfirmPassword.text) {
                let passwordMismatchAlert = UIAlertController(title: "Passwords do not Match", message: "Confirm password is incorrect", preferredStyle: UIAlertController.Style.alert)
                
                passwordMismatchAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                // show the alert
                self.present(passwordMismatchAlert, animated: true, completion: nil)
            } else {
                self.performSegue(withIdentifier: "successfulRegiterSegue", sender: self)
            }
        } else {
            let emptyAlert = UIAlertController(title: "Required Fields are Empty", message: "Please fill all fields", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            emptyAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(emptyAlert, animated: true, completion: nil)
            
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
