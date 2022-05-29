

import UIKit
import AVKit
import SoundAnalysis
import AVFoundation
import SwiftUI


class ViewController2: UIViewController {
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let sound = Bundle.main.path(forResource:"لنبدأ-الرحلة", ofType: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
        }catch
        {
            print("error")
        }
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
    
    
}
