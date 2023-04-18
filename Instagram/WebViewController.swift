//
//  WebViewController.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 15/03/23.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var rellWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebView()
    }
    
    private func loadWebView(){
        let url = URL(string: "https://www.instagram.com/p/CoUjwjnvvb1/")!
        let requestUrl = URLRequest(url: url)
        rellWebView.load(requestUrl)
        //        self.tabBarController?.tabBar.isHidden = true
    }
}
