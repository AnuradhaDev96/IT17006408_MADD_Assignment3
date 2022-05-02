//
//  ForgotPasswordViewController.swift
//  it17006408
//
//  Created by Anuradha Hewa Siribaddana on 2022-05-02.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTapPaswordResetButton(_ sender: Any) {
        let linkSentAlert = UIAlertController(title: "Password reset link sent to your inbox", message: "Please login to your mail and click on the reset link to password reset", preferredStyle: .alert)
        
        let passwordResetAlert = UIAlertController(title: "Password resetted successfully", message: "Please login with your new credentials", preferredStyle: .alert)
        
        passwordResetAlert.addAction(UIAlertAction(title: "Go to Login >", style: .default) {(_) -> Void in
            let uivc = self.storyboard!.instantiateViewController(withIdentifier: "LViewController")
            self.navigationController!.pushViewController(uivc, animated: true)        })
        
        linkSentAlert.addAction(UIAlertAction(title: "Close", style: .cancel, handler: { action in
            //
            self.present(passwordResetAlert, animated: true)
        }))
        
        present(linkSentAlert, animated: true)
        
        
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
