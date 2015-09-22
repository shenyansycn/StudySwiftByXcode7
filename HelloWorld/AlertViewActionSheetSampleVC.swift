//
//  AlertViewActionSheetSampleVC.swift
//  HelloWorld
//
//  Created by ShenYan on 15/9/22.
//  Copyright © 2015年 ShenYan. All rights reserved.
//


import UIKit

class AlertViewActionSheetSampleVC: UIViewController, UIAlertViewDelegate, UIActionSheetDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testAlertView(sender: UIButton) {
//        let alertView : UIAlertView = UIAlertView(title: "Alert", message: "Alert text goes hert", delegate: self, cancelButtonTitle: "No", otherButtonTitles: "Yes")
//        alertView.show()
        let alertController: UIAlertController = UIAlertController(title: "Alert", message: "Alert text goes here1", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.Cancel, handler: {(alertAction) -> Void in print("Tap No Button")}))
        alertController.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default, handler: {(alertAction) -> Void in print("Tap Yes Button")}))
        
        self.presentViewController(alertController,animated:true, completion: nil)
    }
    
    @IBAction func testActionSheet(sender: UIButton) {
//        let actionSheet: UIActionSheet = UIActionSheet(title: nil, delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: "破坏性按钮", otherButtonTitles: "Facebook","新浪微博")
//        actionSheet.showInView()
        let actionSheetController: UIAlertController = UIAlertController()
        actionSheetController.addAction(UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: {(alertAction) -> Void in print("Tap cancel Button")}))
        actionSheetController.addAction(UIAlertAction(title: "破坏性按钮", style: UIAlertActionStyle.Destructive, handler: {(alertAction) -> Void in print("Tap Destructive Button")}))
        actionSheetController.addAction(UIAlertAction(title: "新浪微博", style: UIAlertActionStyle.Default, handler: {(alertAction) -> Void in print("Tap sina Weibo Button")}))
        self.presentViewController(actionSheetController, animated: true, completion: nil)
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        NSLog("buttonIndex = %i", buttonIndex)
        print(buttonIndex)
    }
    
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        NSLog("buttonIndex = %i", buttonIndex)
    }
    
}