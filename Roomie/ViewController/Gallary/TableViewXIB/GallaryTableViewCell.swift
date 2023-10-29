//
//  GallaryTableViewCell.swift
//  Roomie
//
//  Created by MacBook27 on 29/10/23.
//

import UIKit

struct GallaryModel {
    var likesCount: Int
    var likes: [Int]
    var isliked: Bool
}

enum likeUnlike {
    case like
    case unlike
}

class GallaryTableViewCell: UITableViewCell {

    static let identifier = "GallaryTableViewCell"
    
    @IBOutlet weak var gallaryImageView: UIImageView?
    @IBOutlet weak var gallaryLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var heartLikeUnlikeButton: UIButton!
    
    var isLiked: likeUnlike = .unlike
    var count = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        gallaryImageView?.layer.cornerRadius = 20
        gallaryImageView?.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func onClickLikeUnlike(_ sender: UIButton) {
        switch isLiked {
        case .unlike:
            isLiked = .like
            setLikeUnlikeButtonUI()
        case .like:
            isLiked = .unlike
            setLikeUnlikeButtonUI()
        }
    }
    
    func setLikeUnlikeButtonUI() {
        switch isLiked {
        case .like:
            heartLikeUnlikeButton.setImage(UIImage(named: "HeartLikeIcon"), for: .normal)
            countLabel.text = "\(count + 1)"
        case .unlike:
            heartLikeUnlikeButton.setImage(UIImage(named: "HeartUnLikeIcon"), for: .normal)
            countLabel.text = "\(count)"
        }
    }
    
    func setData(data: GallaryImages) {
        gallaryImageView?.image = UIImage(named: data.images)
        gallaryLabel?.text = data.labels
    }
}
