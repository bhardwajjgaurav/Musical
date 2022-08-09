//
//  ViewController.swift
//  Musical
//
//  Created by Gaurav Bhardwaj on 09/08/22.
//

import UIKit
import AVFoundation // Audio visual Foundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
      playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName:String){
        let url = Bundle.main.url(forResource:soundName, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: url!)
        audioPlayer?.play()
    }

}

