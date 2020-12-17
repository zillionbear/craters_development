//
//  ViewController.swift
//  dotconnect
//
//  Created by Zillionbear on 12/16/20.
//  Copyright © 2020 craters development. All rights reserved.
//
//  Contributions: Zillionbear (credit: idea and base app) [Your name could be here!]

import UIKit

class ViewController: UIViewController, UISearchBarDelegate, UIWebViewDelegate {
    
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var WebView: UIWebView!
    
    @IBAction func backButton(_ sender: Any)
    {
        if WebView.canGoBack
        {
            WebView.goBack()
        }
    }
    
    @IBAction func refreshButton(_ sender: Any)
    {
        WebView.reload()
    }
    
    @IBAction func forwardButton(_ sender: Any)
    {
        if WebView.canGoForward
        {
            WebView.goForward()
        }
    }
    
    @IBAction func stopNav(_ sender: Any)
    {
        WebView.loadRequest(URLRequest(url: URL(string: "about:blank")!))
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
    {
        SearchBar.resignFirstResponder()
        
        if let url = URL(string: SearchBar.text!)
        {
            WebView.loadRequest(URLRequest(url: url))
        }
    }
    
    func webViewDidStartLoad(_ webView: UIWebView)
    {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView)
    {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        WebView.loadRequest(URLRequest(url: URL(string: "https://www.google.com")!))
    }


}

