//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Costin Valu on 7/18/18.
//  Copyright © 2018 Andreea Goder. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        
            DispatchQueue.global().async {
                do {
                    let data = try Data(contentsOf: url)
                    DispatchQueue.global().sync {
                        self.videoPreviewImage.image = UIImage(data: data)
                    }
                } catch  {
                    //handle the error
                }
            }
            
        }
        
}

