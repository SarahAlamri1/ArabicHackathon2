
import UIKit
import AVKit
import SoundAnalysis
import AVFoundation
import SwiftUI


class ViewController3: UIViewController {
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let sound = Bundle.main.path(forResource:"كرّر-اسم-الحرف", ofType: "wav")
        
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
