//
//  GallaryTableViewCell.swift
//  Roomie
//
//  Created by MacBook27 on 29/10/23.
//

import UIKit

class GallaryTableViewCell: UITableViewCell {

    static let identifier = "GallaryTableViewCell"
    
    @IBOutlet weak var gallaryImageView: UIImageView?
    @IBOutlet weak var gallaryLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var heartLikeUnlikeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        gallaryImageView?.layer.cornerRadius = 20
        gallaryImageView?.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func onClickLikeUnlike(_ sender: UIButton) {
        
    }
    
    
    func setData(data: GallaryImages) {
        gallaryImageView?.image = UIImage(named: data.images)
        gallaryLabel?.text = data.labels
    }
}
