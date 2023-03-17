//
//  ViewController.swift
//  progressBar
//
//  Created by R86 on 17/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    var time = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func startButtonAction(_ sender: Any) {
        
        var randomTime : Float = 0.0
        self.progressBar.progress = randomTime
        time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (_) in
            randomTime += 0.05
            self.progressBar.progress = randomTime
            if self.progressBar.progress == 1.0{
                
                self.time.invalidate()
               
            }
        })
       
    }


}

