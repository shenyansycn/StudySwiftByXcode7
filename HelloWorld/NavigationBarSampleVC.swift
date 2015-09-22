//
//  NavigationBarSample.swift
//  HelloWorld
//
//  Created by ShenYan on 15/9/22.
//  Copyright © 2015年 ShenYan. All rights reserved.
//


import UIKit

class NavigationBarSampleVC: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(sender: UIBarButtonItem) {
        label.text = "click Save"
    }
    
    @IBAction func add(sender: AnyObject) {
        label.text = "click Add"
    }
}