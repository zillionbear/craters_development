//
//  ViewController.swift
//  dotconnectX
//
//  Created by Arturo Cano on 4/9/21.
//  Diamondback pride!
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var vebvioo: UIWebView!
    
    @IBAction func back(_ sender: Any)
    {
        if vebvioo.canGoBack
        {
            vebvioo.goBack()
        }
    }
    
    @IBAction func forward(_ sender: Any)
    {
        if vebvioo.canGoForward
        {
            vebvioo.goForward()
        }
    }
    
    @IBAction func refresh(_ sender: Any)
    {
        vebvioo.reload() 
    }
    
    
    @IBAction func browserHome(_ sender: Any)
    {
        vebvioo.loadRequest(URLRequest(url: URL(string: "https://www.google.com/")!))
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
    {
        searchBar.resignFirstResponder()
        
        if let url = URL(string: searchBar.text!)
        {
            vebvioo.loadRequest(URLRequest(url: url))
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        vebvioo.loadRequest(URLRequest(url: URL(string: "https://zillionbear.github.io/craters_development/")!))
    }


}

