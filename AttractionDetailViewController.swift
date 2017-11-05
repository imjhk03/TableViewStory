//
//  AttractionDetailViewController.swift
//  TableViewStory
//
//  Created by Joo Hee Kim on 2015. 11. 5..
//  Copyright © 2015년 Joo Hee Kim. All rights reserved.
//

import UIKit

class AttractionDetailViewController: UIViewController {
    var webSite: String?
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let address = webSite {
            let webURL = URL(string: address)
            let urlRequest = URLRequest(url: webURL! as URL)
            webView.loadRequest(urlRequest)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
