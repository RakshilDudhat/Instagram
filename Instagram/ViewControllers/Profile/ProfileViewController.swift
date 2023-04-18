//
//  ProfileViewController.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 13/03/23.
//

import UIKit
import Alamofire

class ProfileViewController: UIViewController {

    @IBOutlet weak var feedTableView: UITableView!
    
    var arrApi: BasicDetalis!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        feeedPostApiCall()
    }
    
    private func configure() {
        let nibFile: UINib = UINib(nibName: "FeedAPITableViewCell", bundle: nil)
        feedTableView.register(nibFile, forCellReuseIdentifier: "FeedAPITableViewCell")
    }

    private func feeedPostApiCall() {
        AF.request("https://chroniclingamerica.loc.gov/newspapers.json", method: .get).responseData { [self] response in
            debugPrint("response \(response)")
            if response.response?.statusCode == 200 {
                guard let apiData = response.data else { return }
                do {
                    let feedApi = try JSONDecoder().decode(BasicDetalis.self, from: apiData)
                    arrApi = feedApi
                    feedTableView.reloadData()
                } catch {
                    print(error.localizedDescription)
                }
            } else {
                print("Locho")
            }
        }
    }
    
}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrApi?.newspapers.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: FeedAPITableViewCell = tableView.dequeueReusableCell(withIdentifier: "FeedAPITableViewCell", for: indexPath) as! FeedAPITableViewCell
        
        cell.stateLabel.text = "\(arrApi.newspapers[indexPath.row].state)"
        cell.iconLabel.text = "\(arrApi.newspapers[indexPath.row].lccn)"
        cell.urlLabel.text = "\(arrApi.newspapers[indexPath.row].url)"
        cell.titleLabel.text = "\(arrApi.newspapers[indexPath.row].title)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 155
    }
}
