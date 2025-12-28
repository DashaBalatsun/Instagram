//
//  SceneDelegate.swift
//  Instagram
//
//  Created by Дарья Балацун on 22.12.25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowsScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowsScene)
        let vc = ViewController()
        window.rootViewController = vc
        window.makeKeyAndVisible()
        self.window = window
    }


}

