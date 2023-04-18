//
//  HomePostCollectionViewCell.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 13/03/23.
//

import UIKit

class HomePostCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var dotsButton: UIButton!
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var daylabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var commitButton: UIButton!
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var image2: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        image1.layer.cornerRadius = 25
        image1.layer.borderWidth = 1
        
    }
    
    
    @IBAction func therrDotButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func tapHeartButton(_ sender: UIButton) {
        
    }
    
    @IBAction func tapCommitButton(_ sender: UIButton) {
        
    }
    
    @IBAction func tapShareButton(_ sender: UIButton) {
        
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        
    }
}
