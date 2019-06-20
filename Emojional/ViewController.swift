//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["♥️": ["i heart you", "i love you", "love ya"], "🥰": ["cute", "pretty", "awww"], "🤰🏽": ["ohana means family 💖", "who is the father?", "look at my belly"], "😋": ["goofy", "heyyo", "wacky"], "🌸": ["flower", "pink", "bloom"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        var emoji = sender.titleLabel?.text
        let alertController = UIAlertController(title: "Heyyo", message: emojis[emoji!]?.randomElement(), preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)


    }


}

