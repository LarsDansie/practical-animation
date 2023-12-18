//
//  ViewController.swift
//  contest
//
//  Created by Lars Dansie on 11/21/23.
//

import UIKit

class emailField: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func shakeTextField() {
           UIView.animate(withDuration: 0.1, animations: {
               self.emailTextField.transform = CGAffineTransform(translationX: 10, y: 0)
           }) { _ in
               UIView.animate(withDuration: 0.1) {
                   self.emailTextField.transform = .identity
               }
           }
       }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        if emailTextField.text?.isEmpty ?? true {
            shakeTextField()
        } else {
            performSegue(withIdentifier: "enteredContestSegue", sender: self)
        }
    }
}

