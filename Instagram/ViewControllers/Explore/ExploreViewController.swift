//
//  ExploreViewController.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 13/03/23.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet weak var serachBar: UISearchBar!
    @IBOutlet weak var topPostCollectionView: UICollectionView!
    
    var arrTopPostImage: [String] = ["T1","T2","T3","T4","T5","T6","T7","T8","T9","T10","T1","T2","T3","T4","T5","T6","T7","T8","T9","T10","T1","T2","T3","T4","T5","T6","T7","T8","T9","T10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp() {
        configure()
    }
    
    private func configure() {
        let nibFile: UINib = UINib(nibName: "TopsCollectionViewCell", bundle: nil)
        topPostCollectionView.register(nibFile, forCellWithReuseIdentifier: "TopsCollectionViewCell")
    }
}


extension ExploreViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrTopPostImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: TopsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopsCollectionViewCell", for: indexPath) as! TopsCollectionViewCell
        
        cell.reelImage.image = UIImage(named: arrTopPostImage[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let webViewController = storyboard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        webViewController.hidesBottomBarWhenPushed = true 
        navigationController?.pushViewController(webViewController, animated: true)
    }
}


extension ExploreViewController: UICollectionViewDelegateFlowLayout {
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 2, bottom: 0, right: 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}
