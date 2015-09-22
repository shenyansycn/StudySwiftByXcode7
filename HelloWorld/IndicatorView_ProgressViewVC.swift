//
//  IndicatorView_ProgressView.swift
//  HelloWorld
//
//  Created by ShenYan on 15/9/21.
//  Copyright © 2015年 ShenYan. All rights reserved.
//

import UIKit

class IndicatorView_ProgressViewVC: UIViewController {
    
    @IBOutlet weak var myActivityIndicatorView: UIActivityIndicatorView!
    
    
    @IBOutlet weak var myProgressView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var myTimer: NSTimer!
    @IBAction func downloadProgress(sender: UIButton) {
        myProgressView.progress = 0
        myTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "download", userInfo: nil, repeats: true)
    }
    func download(){
        myProgressView.progress = myProgressView.progress + 0.1
        if (myProgressView.progress == 1.0){
            myTimer.invalidate()
            let alert : UIAlertView = UIAlertView(title: "download completed", message: "", delegate: nil, cancelButtonTitle: "OK")
            alert.show()
        }
    }
    @IBAction func startToMove(sender: UIButton) {
        if (myActivityIndicatorView.isAnimating()){
            myActivityIndicatorView.stopAnimating()
        } else {
            myActivityIndicatorView.startAnimating()
        }
    }
}
