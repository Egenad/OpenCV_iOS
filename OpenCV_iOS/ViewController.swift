//
//  ViewController.swift
//  OpenCV_iOS
//
//  Created by Angel Terol on 22/4/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var wrapper: Wrapper?
    
    var pause : Bool = false
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var blurSeekBar: UISlider!
    @IBOutlet weak var gradientSeekBar: UISlider!
    @IBOutlet weak var angleSeekBar: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wrapper = Wrapper(controller: self, andImageView: imageView)
        
        print("\(String(describing: wrapper?.openCVVersionString()))")
        
        updateUI()
    }

    @IBAction func playButtonTouched(_ sender: UIButton) {
        pause = !pause
        wrapper?.changePause(pause)
        updateUI()
    }
    
    private func updateUI(){
        if(!pause){
            self.playButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
        }else{
            self.playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        wrapper?.updateOrientation()
    }
    
    
    @IBAction func angleValueChanged(_ sender: UISlider) {
        wrapper?.setAngle(Int32(sender.value))
    }
    
    
    @IBAction func blurValueChanged(_ sender: UISlider) {
        wrapper?.setBlur(Int32(sender.value))
    }
    
    
    @IBAction func gradientValueChanged(_ sender: UISlider) {
        wrapper?.setGradient(Int32(sender.value))
    }
}

