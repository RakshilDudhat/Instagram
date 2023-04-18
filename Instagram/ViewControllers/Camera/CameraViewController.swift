//
//  CameraViewController.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 13/03/23.
//

import Alamofire
import UIKit

class CameraViewController: UIViewController {

    @IBOutlet weak var reelsAPITableViewCell: UITableView!
    
    var arrOfAPI: [Information] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        apiCalling()
    }

    private func configure() {
        let nib: UINib = UINib(nibName: "ReelsTableViewCell", bundle: nil)
        reelsAPITableViewCell.register(nib, forCellReuseIdentifier: "ReelsTableViewCell")
        reelsAPITableViewCell.separatorStyle = .none
    }

    private func apiCalling() {
        AF.request("https://gorest.co.in/public/v2/posts",method: .get) .responseData { [self] response in
            debugPrint("respones \(response)")
            if response.response?.statusCode == 200 {
                guard let apiData = response.data else { return }
                do {
                    let APIRequest = try JSONDecoder().decode([Information].self, from: apiData)
                    arrOfAPI = APIRequest
                    reelsAPITableViewCell.reloadData()
                }
                catch {
                    print(error.localizedDescription)
                }
            }
            else {
                print("locho")
            }
        }
    }
}


extension CameraViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ReelsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ReelsTableViewCell", for: indexPath) as! ReelsTableViewCell
        cell.idLabel.text = "\(arrOfAPI[indexPath.row].id)"
        cell.tittleLable.text = "\(arrOfAPI[indexPath.row].title)"
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.masksToBounds = true
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfAPI.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 205
    }
}
