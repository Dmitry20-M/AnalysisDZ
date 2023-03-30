//
//  SceneDelegate.swift
//  AnalysisDZ
//
//  Created by iAlesha уличный on 30.03.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = ProfileViewController()
        window.makeKeyAndVisible()
        self.window = window
        
    }
}