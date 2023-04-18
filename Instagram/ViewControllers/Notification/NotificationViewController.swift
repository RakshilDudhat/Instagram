//
//  NotificationViewController.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 13/03/23.
//

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet weak var NotificationTableView: UITableView!
    var arrImageOfProfileIcon: [String] = ["S2","S6","S2"]
    var arrImageOfLikePost: [String] = ["S1","S3","S3"]
    var arrNotificationInformation: [NotificationInformation] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notifications"
        setUp()
    }
    
    private func setUp() {
        configure()
        notificationDataDetalis()
    }
    
    private func configure() {
        let nibFile: UINib = UINib(nibName: "NotificationTableViewCell", bundle: nil)
        NotificationTableView.register(nibFile, forCellReuseIdentifier: "NotificationTableViewCell")
    }
    
    private func notificationDataDetalis() {
        let data1 = NotificationInformation(label: "Sanju_.121. is liked your post.1d")
        let data2 = NotificationInformation(label: "rommy_patel is liked your story.")
        let data3 = NotificationInformation(label: "Sanju_.121. is liked your story.")
    
        arrNotificationInformation = [data1, data2, data3]
    }
}

extension NotificationViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNotificationInformation.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: NotificationTableViewCell = tableView.dequeueReusableCell(withIdentifier: "NotificationTableViewCell", for: indexPath) as! NotificationTableViewCell
        cell.profileImageIcon.image = UIImage(named: arrImageOfProfileIcon[indexPath.row])
        cell.likePostImage.image = UIImage(named: arrImageOfLikePost[indexPath.row])
        cell.usernameLabel.text = "\(arrNotificationInformation[indexPath.row].label)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 68
    }
}
