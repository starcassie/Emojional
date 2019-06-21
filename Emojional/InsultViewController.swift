//
//  InsultViewController.swift
//  Emojional
//
//  Created by Apple on 6/21/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class InsultViewController: UIViewController {

    var messages = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var message: UITextField!
    
    @IBAction func getMessage(_ sender: Any) {
        messages.append(message.text!)
    }
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "hey babe", message: messages.randomElement(), preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
        
    }

    @IBAction func clear(_ sender: Any) {
        messages = [String]()
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
