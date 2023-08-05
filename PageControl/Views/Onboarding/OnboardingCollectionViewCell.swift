//
//  OnboardingCollectionViewCell.swift
//  PageControl
//
//  Created by Leonardo Mello on 05/08/23.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var slideTitle: UILabel!
    @IBOutlet weak var slideDescription: UILabel!
    @IBOutlet weak var slideImage: UIImageView!
    
    func setup(_ slide: OnboardingSlide){
        slideImage.image = slide.image
        slideTitle.text = slide.title
        slideDescription.text = slide.description
    }
}
