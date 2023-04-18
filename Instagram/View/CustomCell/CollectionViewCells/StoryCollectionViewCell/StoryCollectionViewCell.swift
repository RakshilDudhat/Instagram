//
//  StoryCollectionViewCell.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 13/03/23.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var storyPictureImage: UIImageView!
    @IBOutlet weak var storyNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //storyPictureImage.layer.cornerRadius = 35
        
        
    }
    
}
