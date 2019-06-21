//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["♥️": ["I love you with all my circle, not my heart. Because hearts break, but circles go on forever.", "Wouldn't it be the perfect crime if I stole your heart and you stole mine?", "I think the gaps between my fingers were meant for yours", "I value my breath so it would be nice if you didn't take it away every time you walked by", "There’s only one thing I want to change about you, and that’s your last name", "Are you a dictionary? Cause you’re adding meaning to my life"], "🥰": ["Roses are red violets are blue I didn’t know what perfect was until I met you", "Guess what I’m wearing? The smile you gave me!", "My friends bet I can’t talk to the prettiest girl. Wanna use their money to buy drinks?", "are you from tennesse because you are the only ten I see", "If beauty were time, you would be forever.", "Why would I want to look at the stars when I can look in your eyes?", "I must be in a museum, because you truly are a work of art"], "🤰🏽": ["ohana means family 💖", "who is the father?", "look at my belly"], "😋": ["Are you a magician? Because whenever I look at you, everyone else disappears!", "They say Disneyland is the happiest place on earth. Well apparently, no one has ever been in your arms", "I’m lost. Can you give me directions to your heart?", "Are you sure you’re not tired? You’ve been running through my mind all day", " I was wondering if you had an extra heart. Mine was just stolen", "Do you believe in love at first sight or should I pass by again?", "Is your name Google? Because you have everything I’ve been searching for", "Hey, I lost my number, can I have yours?"], "🌸": ["if i had a garden i'd plant my tulips next to yours", "if you were a flower i'd pick you", "Are you a eucalyptus? Because you have so many amazing koalaties", "can you feel our love blossoming?", "are you ivy? cause you sure look vine", "if you were a flower, you'd be a damnnndelion"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        var emoji = sender.titleLabel?.text
        let alertController = UIAlertController(title: "hey babe", message: emojis[emoji!]?.randomElement(), preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)


    }


}

