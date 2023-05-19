//
//  DetailViewController.swift
//  ULSA2023
//
//  Created by ITIT on 14/03/23.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View load vista datalle")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
            print("View will appear vista detalle")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View did appear vista detalle")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("View disappear appear vista detalle")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
