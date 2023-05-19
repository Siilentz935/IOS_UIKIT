//
//  ListViewController.swift
//  ULSA2023
//
//  Created by ITIT on 23/03/23.
//

import UIKit

class ListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var refreshControl: UIRefreshControl!
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlayerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TennisPlayerTableViewCell") as? TennisPlayerTableViewCell
        else{
            return UITableViewCell()
        }
        cell.data = PlayerArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(PlayerArray[indexPath.row].name ?? "")
        let vc = UIStoryboard.init(name: "TercerParcial", bundle: Bundle.main).instantiateViewController(withIdentifier: "PlayerListDetailViewController") as? PlayerListDetailViewController
        vc?.detailPlayer = PlayerArray[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        refreshControl = UIRefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to Refresh")
        refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
        refreshControl.tintColor = UIColor.magenta
        tableView.addSubview(refreshControl)
        
        // Do any additional setup after loading the view.
    }
    @objc func refresh(_ sender: Any){
        refreshControl.endRefreshing()
    }
    var PlayerArray = [ tennisPlayer(image: "djokovic", name: "Novak Djokovic", ranking: "1", strongArm: "Right Handed", retired: false),
        tennisPlayer(image: "tsistipas", name: "Stephano Tsistipas", ranking: "5", strongArm: "Right Handed", retired: false),
        tennisPlayer(image: "alcaraz", name: "Carlos Alcaraz", ranking: "2", strongArm: "Right Handed", retired: false),
        tennisPlayer(image: "medvedev", name: "Danill Medvedev", ranking: "4", strongArm: "Right Handed", retired: true),
        tennisPlayer(image: "ruud", name: "Cassper Ruud", ranking: "3", strongArm: "Right Handed", retired: false)]

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

struct tennisPlayer {
    let image: String?
    let name: String?
    let ranking: String?
    let strongArm: String?
    let retired: Bool?
}
