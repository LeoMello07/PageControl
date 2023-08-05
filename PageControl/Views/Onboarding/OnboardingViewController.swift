//
//  OnboardingViewController.swift
//  PageControl
//
//  Created by Leonardo Mello on 05/08/23.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var loadText: UILabel!
    @IBOutlet weak var openButton: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    
    var slides: [OnboardingSlide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [OnboardingSlide(title: "aaa", description: "aa", image:    #imageLiteral(resourceName: "8.png")),
               
                  OnboardingSlide(title: "aaa", description: "aa", image:    #imageLiteral(resourceName: "8.png")),
                  OnboardingSlide(title: "aaa", description: "aa", image:    #imageLiteral(resourceName: "8.png"))
        ]
    }

    @IBAction func openFlutter(_ sender: UIButton) {
    }
    
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCollectionViewCell", for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    
}
