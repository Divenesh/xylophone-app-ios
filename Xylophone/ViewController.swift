//
//  ViewController.swift
//  Xylophone
//
//  Created by Divenesh Shamugam on 26/02/2026.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var myPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OnButtonClick(_ sender: UIButton) {
        playSound(soundName: sender.titleLabel?.text! ?? "No Title")
    }
    
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName , withExtension: "wav")!
        
        do {
            myPlayer = try AVAudioPlayer(contentsOf: url)
            myPlayer?.play()
        } catch {
            print("Couldn't load the sound file.")
        }
    }
    
}

