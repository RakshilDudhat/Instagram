//
//  HomeViewController.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 13/03/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homePostsCollectionView: UICollectionView!
    @IBOutlet weak var storyCollectionView: UICollectionView!
    
    // story
    var arrStoryImage: [String] = ["S1","S2","S3","S4","S5","S6","S7","S8","S9"]
    
    // profile
    var arrProfileIcon: [String] = ["I1","S2","I2","S6","S7","S8","S8","S9","S5"]
    
    // post
    var arrPostImage: [String] = ["P1","P2","I2","S6","S7","P4","P5","P6","P7"]
    
    var arrName: [Username] = []
    var arrPostDetails: [PostDetalis] = []
    
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var instagramLogoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp() {
        configureData()
        data()
        postData()
    }
    
    private func data() {
        let data1: Username = Username(name: "My Story")
        let data2: Username = Username(name: "Sanju_.121.")
        let data3: Username = Username(name: "Manthan_Bharodiya")
        let data4: Username = Username(name: "SR_099")
        let data5: Username = Username(name: "ravi@dhakecha")
        let data6: Username = Username(name: "rommy_patel")
        let data7: Username = Username(name: "parthVishavdiya__")
        let data8: Username = Username(name: "helly-savaj")
        let data9: Username = Username(name: "hr-2432")
        
        arrName = [data1, data2, data3, data4, data5, data6, data7, data8, data9]
    }
    
    private func postData() {
        let detail1: PostDetalis = PostDetalis(userName: "clg_forver", likes: "1,233 likes", days: "13 days ago")
        let detail2: PostDetalis = PostDetalis(userName: "Sanju_.121.", likes: "133 likes", days: "3 days ago")
        let detail3: PostDetalis = PostDetalis(userName: "Mansi@Savani__", likes: "100 likes", days: "1 days ago")
        let detail4: PostDetalis = PostDetalis(userName: "rommy_patel", likes: "50 likes", days: "3 hours ago")
        let detail5: PostDetalis = PostDetalis(userName: "parthVishavdiya__", likes: "75 likes", days: "1 hours ago")
        let detail6: PostDetalis = PostDetalis(userName: "helly-savaj", likes: "71 likes", days: "1 hours ago")
        let detail7: PostDetalis = PostDetalis(userName: "helly-savaj", likes: "80 likes", days: "1 hours ago")
        let detail8: PostDetalis = PostDetalis(userName: "hr-2432", likes: "800 likes", days: "30 minitues ago")
        let detail9: PostDetalis = PostDetalis(userName: "ravi@dhakecha", likes: "1050 likes", days: "4 days ago")
        
        
        arrPostDetails = [detail1, detail2, detail3, detail4, detail5, detail6, detail7, detail8, detail9]
    }
    
    private func configureData() {
        let nibFile: UINib = UINib(nibName: "StoryCollectionViewCell", bundle: nil)
        storyCollectionView.register(nibFile, forCellWithReuseIdentifier: "StoryCollectionViewCell")
        
        let nibFile2: UINib = UINib(nibName: "HomePostCollectionViewCell", bundle: nil)
        homePostsCollectionView.register(nibFile2, forCellWithReuseIdentifier: "HomePostCollectionViewCell")
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
 
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return arrStoryImage.count
        if collectionView == self.storyCollectionView {
            return arrName.count
        }
        return arrPostDetails.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.storyCollectionView {
            let cell: StoryCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! StoryCollectionViewCell
            
            cell.storyPictureImage.image = UIImage(named: arrStoryImage[indexPath.row])
            let item = arrName[indexPath.row]
            cell.storyNameLabel.text = "\(item.name)"
            cell.storyPictureImage.layer.cornerRadius = 40
            cell.storyPictureImage.layer.borderWidth=1
           // cell.layer.borderWidth = 1
            return cell
        }
        
        let cell: HomePostCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomePostCollectionViewCell", for: indexPath) as! HomePostCollectionViewCell
//        cell.dotsButton.tag = indexPath.row
//        cell.dotsButton.addTarget(self, action: #selector(didTapDotButton(_:)), for: .touchUpInside)
        
        cell.image1.image = UIImage(named: arrProfileIcon[indexPath.row])
        cell.image2.image = UIImage(named: arrPostImage[indexPath.row])
        
        
        let detail = arrPostDetails[indexPath.row]
        cell.userNameLabel.text = "\(detail.userName)"
        cell.daylabel.text = "\(detail.days)"
        cell.likeLabel.text = "\(detail.likes)"
        
        return cell
    }
    
//    @objc
//    private func didTapDotButton(_ sender: UIButton) {
//        let actionSheet = UIAlertController(title: "Post Options", message: nil, preferredStyle: .actionSheet)
//        actionSheet.addAction(UIAlertAction(title: "Report post", style: .destructive))
//        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
//        present(actionSheet, animated: true)
//    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}


extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.storyCollectionView {
            return CGSize(width: 80, height: 112)
        }
        return CGSize(width: 370, height: 400)
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        if collectionView == self.storyCollectionView {
//            return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
//        }
//        return UIEdgeInsets(top: 3, left: 5, bottom: 3, right: 5)
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == self.storyCollectionView {
            return 15
        }
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == self.storyCollectionView {
            return 15
        }
        return 4
    }
    
}
