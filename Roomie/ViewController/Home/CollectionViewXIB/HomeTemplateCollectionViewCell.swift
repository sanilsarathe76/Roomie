//
//  HomeTemplateCollectionViewCell.swift
//  CustomTabBar
//
//  Created by macmini45 on 27/07/23.
//

import UIKit

class HomeTemplateCollectionViewCell: UICollectionViewCell {

    static let identifier = "HomeTemplateCollectionViewCell"
        
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var gradientImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setCornerRadius()
        setUpVerticalLayout()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.setCornerRadius()
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: self.layer)
    }
    
    func setCornerRadius() {
        imageView.layer.cornerRadius = 20
        gradientImageView.layer.cornerRadius = 20
        containerView.layer.masksToBounds = true
    }
        
    func setImages(data: ShowData) {
        imageView.image = UIImage(named: data.images)
        textLabel.text = data.labels
    }
    
    func setUpVerticalLayout() {
        textLabel.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
    }
    
    func setUpHorizonatalLayout() {
        textLabel.transform = .identity
    }
}
