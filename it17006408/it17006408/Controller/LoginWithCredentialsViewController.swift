//
//  LoginWithCredentialsViewController.swift
//  it17006408
//
//  Created by Anuradha Hewa Siribaddana on 2022-05-06.
//

import UIKit

class LoginWithCredentialsViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginUIButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.text = "anuradha@gmail.com"
        passwordTextField.text = "Anuradha123"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onTapLoginUiButton(_ sender: Any) {
        if (usernameTextField.text != "" && passwordTextField.text != "") {
            if (usernameTextField.text != "anuradha@gmail.com" || passwordTextField.text != "Anuradha123") {
                // create the alert
                let alert = UIAlertController(title: "Invalid Login", message: "Invalid username or password", preferredStyle: UIAlertController.Style.alert)

                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                // show the alert
                self.present(alert, animated: true, completion: nil)                //print("Invalid username or password")
            }else{
                self.performSegue(withIdentifier: "goToHomeSeage", sender: self)
            }
        } else {
            let emptyAlert = UIAlertController(title: "Required Fields are Empty", message: "Please enter credentials", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            emptyAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(emptyAlert, animated: true, completion: nil)        }
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
