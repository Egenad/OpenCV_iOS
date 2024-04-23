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
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wrapper = Wrapper(controller: self, andImageView: imageView)
        
        print("\(String(describing: wrapper?.openCVVersionString()))")
    }


}

