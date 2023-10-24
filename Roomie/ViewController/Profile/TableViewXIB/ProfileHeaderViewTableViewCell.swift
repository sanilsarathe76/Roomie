//
//  ProfileHeaderViewTableViewCell.swift
//  Roomie
//
//  Created by macmini45 on 25/08/23.
//

import UIKit

class ProfileHeaderViewTableViewCell: UITableViewHeaderFooterView {
    
    static let identifier = "ProfileHeaderViewTableViewCell"
    
    @IBOutlet weak var headerImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
