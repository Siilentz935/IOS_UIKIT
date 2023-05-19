//
//  WebViewController.swift
//  ULSA2023
//
//  Created by ITIT on 23/03/23.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webKit2: WKWebView!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Web View"
        guard let url = URL(
            string: "https://www.youtube.com"
        )else{
            return
        }
        webView.load(URLRequest (url: url))
        // Do any additional setup after loading the view.
        webKit2.load(URLRequest(url: url))
    }
    

    /*s
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
