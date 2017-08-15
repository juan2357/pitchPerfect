//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Juan Perez on 8/14/17.
//  Copyright © 2017 Juan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingProgress: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordingProgress.text = "Recording in Progress"
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false

    }

    @IBAction func stopRecording(_ sender: Any) {
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordingProgress.text = "Tap to Record"
    }

 
}

