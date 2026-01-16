//
//  Untitled.swift
//  Instagram
//
//  Created by Дарья Балацун on 16.01.26.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let layout = UICollectionViewFlowLayout()
        let userProfileController = UserProfileController(collectionViewLayout: layout)
        let nv = UINavigationController(rootViewController: userProfileController)
        nv.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        nv.tabBarItem.selectedImage = UIImage(systemName: "person.crop.circle.fill")
        tabBar.tintColor = .black
        viewControllers = [nv]
        selectedIndex = 0
    }
}
