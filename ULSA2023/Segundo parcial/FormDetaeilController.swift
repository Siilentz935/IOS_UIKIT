//
//  FormDetaeilController.swift
//  ULSA2023
//
//  Created by ITIT on 21/03/23.
//

import UIKit

class FormDetaeilController: UIViewController {
    var nameFromPreviousView : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = nameFromPreviousView
        // Do any additional setup after loading the view.
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
