//
//  UserProfileController.swift
//  Instagram
//
//  Created by Дарья Балацун on 16.01.26.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class UserProfileController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .systemBackground
        navigationItem.title = Auth.auth().currentUser?.uid
        
        fetchUser()
    }
    
    private func fetchUser() {
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in print(snapshot.value ?? "")
            let dictionary = snapshot.value as? [String:Any]
            let userName = dictionary?["username"] as? String
            self.navigationItem.title = userName
        }) { (err) in
            print("Failed to fetch User:", err)
        }
    }
}
