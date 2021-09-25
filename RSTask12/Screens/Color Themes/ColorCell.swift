//
//  ColorCell.swift
//  RSTask12
//
//  Created by Ivan Budovich on 9/24/21.
//

import UIKit

class ColorCell: UICollectionViewCell {

    @IBOutlet private var topConstraint: NSLayoutConstraint!
    @IBOutlet private var leadingConstraint: NSLayoutConstraint!
    @IBOutlet private var imageView: UIImageView!
    
    override var isSelected: Bool {
        willSet {
            if newValue {
                leadingConstraint.constant = 30
                topConstraint.constant = 16
            }
            else {
                leadingConstraint.constant = 0
                topConstraint.constant = 0
            }
            setNeedsLayout()
        }
    }
    
    func configure(with theme: ColorTheme) {
        imageView.image = theme.image
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }

}
