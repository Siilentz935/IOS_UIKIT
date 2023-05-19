//
//  BleachCapitanesViewController.swift
//  ULSA2023
//
//  Created by ITIT on 16/05/23.
//

import UIKit

class BleachCapitanesViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var refreshControl: UIRefreshControl!
    var capitanesArray : [capitanesModel]?
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return capitanesArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BleachCapitanesTableViewCell") as? BleachCapitanesTableViewCell
        else{
            return UITableViewCell()
        }
        cell.datas = capitanesArray?[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(capitanesArray?[indexPath.row].Nombre ?? "")
        let vc = UIStoryboard.init(name: "TercerParcial", bundle: Bundle.main).instantiateViewController(withIdentifier: "BleachCapitanesDetailViewController") as? BleachCapitanesDetailViewController
        vc?.detailCaptain = capitanesArray?[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
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
    override func viewWillAppear(_ animated: Bool) {
        request()
    }
    
    @objc func refresh(_ sender: Any){
        request()
        refreshControl.endRefreshing()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
   func request() {
            let url = URL(string: "https://gist.githubusercontent.com/Siilentz935/83863a7b49ee22d3d7a855321ef88f56/raw/d7ac274fbf9f52c4ec3f14f38957a0edd04d3f87/gistfile1.txt")!
    
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
    
    
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                print("dataaaaaaa")
                print(data ?? "")
                if let data = data {
                    if let capitanes = try? JSONDecoder().decode([capitanesModel].self, from: data) {
                        print("lista de webservice")
                        print(capitanes)
                        self.capitanesArray = capitanes
                        DispatchQueue.main.sync {
                            self.tableView.reloadData()
                        }
                        
                    } else {
                        print("Invalid Response")
                    }
                } else if let error = error {
                    print("HTTP Request Failed \\(error)")
                }
            }
            task.resume()
        }
    }
    


struct capitanesModel : Decodable{
    let image :String?
    let Nombre : String?
    let Division :Int?
    let Estatus :String?
    let Bankai :Bool?

    
}
