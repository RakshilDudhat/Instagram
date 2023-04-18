//
//  TopsCollectionViewCell.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 15/03/23.
//

import UIKit

class TopsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var reelIcon: UIImageView!
    @IBOutlet weak var reelImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        reelImage.layer.borderWidth = 1
    }
}
