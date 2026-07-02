//
//  SceneDelegate.swift
//  ios-animations
//
//  Created by Karla E. Martins Fernandes on 02/07/26.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }

        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = AnimationsViewController()
        self.window = window
        window.makeKeyAndVisible()
    }
}
