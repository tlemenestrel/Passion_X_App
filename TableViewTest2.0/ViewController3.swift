//
//  ViewController3.swift
//  TableViewTest2.0
//
//  Created by Thomas Le Menestrel on 24/01/18.
//  Copyright © 2018 Passion for Creation. All rights reserved.
//

import UIKit
import WebKit
class ViewController3: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://youtu.be/QhXMZMO7I64")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
   
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

     }



    


