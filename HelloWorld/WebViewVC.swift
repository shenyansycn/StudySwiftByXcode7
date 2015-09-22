//
//  WebViewVC.swift
//  HelloWorld
//
//  Created by 申岩 on 15/9/18.
//  Copyright © 2015年 ShenYan. All rights reserved.
//
import UIKit

class WebViewVC: UIViewController{
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
   
    @IBAction func loadHTMLStringClick(sender: AnyObject) {
        let htmlPath = NSBundle.mainBundle().pathForResource("index", ofType: "html")
        let bundleUrl = NSURL.fileURLWithPath(NSBundle.mainBundle().bundlePath)
        var html: NSString!
        print(htmlPath)
        do {
            html = try NSString(contentsOfFile: htmlPath!, encoding: NSUTF8StringEncoding)
        } catch let error as NSError{
            print(error.localizedDescription)
            html = ""
        }
    
        if (html != nil){
            webView.loadHTMLString(html as String, baseURL: bundleUrl)
        } else {
            print("html is empty")
        }
       
    }
    
    @IBAction func loadDataClick(sender: UIButton) {
    }
    
    @IBAction func loadRequestClick(sender: AnyObject) {
        let url = NSURL(string: "http://www.china.com")
        let request = NSURLRequest(URL: url!)
        
        webView.loadRequest(request)
    }
}

