import UIKit
import AVKit
import SoundAnalysis
import AVFoundation
import SwiftUI


class ViewAfterLaunch: UIViewController {
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let sound = Bundle.main.path(forResource:"لنبداء", ofType: "wav")
        
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
