//
//  Switch_Slider_SegmentedControlSample.swift
//  HelloWorld
//
//  Created by 申岩 on 15/9/16.
//  Copyright (c) 2015年 ShenYan. All rights reserved.
//

import UIKit

class Switch_Slider_SegmentedControlSample: UIViewController {
    
    
    @IBOutlet weak var LeftSwitch: UISwitch!
   
   
    @IBOutlet weak var RightSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func switchValueChange(sender: UISwitch) {
        let witchSwitch = sender as UISwitch
        let setting = witchSwitch.on
        LeftSwitch.setOn(setting, animated: true)
        RightSwitch.setOn(setting, animated: true)

    }
    
    @IBOutlet weak var SliderValue: UILabel!
    @IBAction func sliderValueChange(sender: UISlider) {
        let progressAsInt = Int(sender.value)
        let newText = NSString(format: "%d", progressAsInt)
        SliderValue.text = newText as String
    }
    
    @IBAction func scValueChange(sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        if (index == 0){
            LeftSwitch.hidden = false
            RightSwitch.hidden = false
        } else {
            LeftSwitch.hidden = true
            RightSwitch.hidden = true
        }
        print(sender.selectedSegmentIndex, terminator: "")
        
    }
}

