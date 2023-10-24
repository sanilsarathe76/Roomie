//
//  ExploreHeaderView.swift
//  Roomie
//
//  Created by macmini45 on 25/08/23.
//

import UIKit

class ExploreHeaderView: UITableViewHeaderFooterView {
    
    static let identifier = "ExploreHeaderView"
    
    @IBOutlet weak var headerImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure() {
        headerImageView.image = UIImage(named: "Sanil")
    }
}
