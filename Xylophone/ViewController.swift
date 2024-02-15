//
//  ViewController.swift
//  Xylophone
//
//  Created by Павел Широкий on 13.02.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
     
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(pressedKey: sender.currentTitle!)
    }
    
    func playSound(pressedKey: String) {
        let url = Bundle.main.url(forResource: pressedKey, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                    
    }
}

