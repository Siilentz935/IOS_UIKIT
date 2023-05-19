//
//  CicloDeVidaController.swift
//  ULSA2023
//
//  Created by ITIT on 14/03/23.
//

import UIKit

class CicloDeVidaController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View load vista principal")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
            print("View will appear vista principal")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View did appear vista principal")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("View disappear appear vista principal")
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
