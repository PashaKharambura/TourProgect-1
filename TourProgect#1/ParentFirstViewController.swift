//
//  ParentFirstViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/24/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ParentFirstViewController:  ButtonBarPagerTabStripViewController {
    
    let redColor = UIColor(red: 255/255.0, green: 49/255.0, blue: 35/255.0, alpha: 1.0)
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        settings.style.buttonBarBackgroundColor = redColor
        settings.style.buttonBarItemBackgroundColor = redColor
        settings.style.selectedBarBackgroundColor = UIColor(red: 234/255.0, green: 234/255.0, blue: 234/255.0, alpha: 1.0)
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        changeCurrentIndexProgressive = {(oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .white
            oldCell?.label.font = .boldSystemFont(ofSize: 18)
            newCell?.label.textColor = .white
            newCell?.label.font = .boldSystemFont(ofSize: 21)
        }

    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child_1")
        let child_2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child_2")
    return [child_1, child_2]
    }
        
}

