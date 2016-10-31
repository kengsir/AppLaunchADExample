//
//  LoadAdsWebViewController.swift
//  AppLaunchADExample
//
//  Created by 童星 on 2016/10/30.
//  Copyright © 2016年 童星. All rights reserved.
//

import UIKit

class LoadAdsWebViewController: UIViewController, UIWebViewDelegate {

    fileprivate var webView: UIWebView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.\
        view.backgroundColor = UIColor.white
        webView = UIWebView.init(frame: CGRect.init(x: 0, y: 0, width:view.frame.size.width, height: view.frame.size.height))
        view.addSubview(webView!)
        webView?.delegate = self
        webView?.scrollView.bounces = false
        webView?.scrollView.showsHorizontalScrollIndicator = false
        webView?.scrollView.isScrollEnabled = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let path = "https://www.baidu.com"
        webView?.loadRequest(URLRequest(url: URL(string: path)!))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
