//
//  MainTabBarViewController.swift
//  Movie-Library
//
//  Created by Amby on 26/07/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground

        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: MediaViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: ProfileViewController())

        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "menucard.fill")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "person.fill")

        vc1.title = "Main"
        vc2.title = "Media"
        vc3.title = "Search"
        vc4.title = "Profile"

        tabBar.tintColor = .label
        tabBar.isTranslucent = false
        tabBar.backgroundColor = .systemGray4

        let tabBarAppearance = UITabBarAppearance()
        let tabBarItemAppearance = UITabBarItemAppearance()

        tabBarItemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.orange]
        tabBarItemAppearance.selected.iconColor = .orange

        tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance

        tabBar.standardAppearance = tabBarAppearance

        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }
    


}
