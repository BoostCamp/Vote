//
//  VoteResultHeaderView.swift
//  11112222
//
//  Created by Dongyoon Kang on 2017. 2. 24..
//  Copyright © 2017년 Dongyoon Kang. All rights reserved.
//

import UIKit
import Nuke
class VoteResultHeaderView: UIView {
    @IBOutlet weak var createDateLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var userProfileimageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        
    }
    
    func configureCell(card: Card){
        usernameLabel.text = card.username
        if let photoURL = card.photoURL {
            if let url = URL(string:photoURL){
                Nuke.loadImage(with: url, into: userProfileimageView)
            }
        }
        
        titleLabel.text = card.title
        createDateLabel.text = Util.timeAgoSinceDate(card._date!, numericDates: true)
        if let desc = card.desc {
            bodyLabel.text = desc
        } else {
            bodyLabel.isHidden = true
        }
        
    }
}
