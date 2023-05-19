//
//  RestaurantListViewController.swift
//  ULSA2023
//
//  Created by ITIT on 02/05/23.
//

import UIKit

class RestaurantListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var refreshControl: UIRefreshControl!
    var restaurantArray : [restaurantModel]?
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantListTableViewCell") as? RestaurantListTableViewCell
        else{
            return UITableViewCell()
        }
        cell.datas = restaurantArray?[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(restaurantArray?[indexPath.row].name ?? "")
        let vc = UIStoryboard.init(name: "TercerParcial", bundle: Bundle.main).instantiateViewController(withIdentifier: "RestaurantDetailViewController") as? RestaurantDetailViewController
        vc?.detailRestaurant = restaurantArray?[indexPath.row]
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
            let url = URL(string: "https://gist.githubusercontent.com/jorgegit/f1c89ab2e409c98ec618fdb9e75077bd/raw/15e41a39c9c251cad31639feabf0ce4ba131bb19/restaurants.json")!
    
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
    
    
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                print("dataaaaaaa")
                print(data)
                if let data = data {
                    if let restaurants = try? JSONDecoder().decode([restaurantModel].self, from: data) {
                        print("lista de webservice")
                        print(restaurants)
                        self.restaurantArray = restaurants
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
    


struct restaurantModel : Decodable{
    let name : String?
    let longitude : String?
    let schedule : String?
    let latitude : String?
    let phone : String?
    let rating : Double?
    let delivery : String?
    let isFavorite : Bool?
    let fee : String?
    let imgName :String?
    let webSite :String?
    
}
