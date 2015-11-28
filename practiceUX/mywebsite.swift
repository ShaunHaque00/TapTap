//
//  mywebsite.swift
//  practiceUX
//
//  Created by Mohammad Haque on 11/9/15.
//  Copyright © 2015 shaun Haque. All rights reserved.
//

import Foundation
import UIKit

class website: UIViewController {
    
    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
            let MyURL = NSURL(string: "http://shaun-haque.github.io/sh/")
            let MyURLRequest: NSURLRequest = NSURLRequest(URL: MyURL!)
            myWebView.loadRequest(MyURLRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

