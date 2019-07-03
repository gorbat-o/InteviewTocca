//
//  TabBarController.swift
//  Tocca
//
//  Created by Oleg  on 7/3/19.
//  Copyright © 2019 Oleg . All rights reserved.
//

import UIKit

final class TabBarController: UITabBarController {
    let contactsTabBarItem = UITabBarItem(title: "Contacts",
                                          image: UIImage(named: "contacts"),
                                          selectedImage: nil)
    let myCardTabBarItem = UITabBarItem(title: "My Card",
                                        image: UIImage(named: "mycard"),
                                        selectedImage: nil)
    let settingsTabBarItem = UITabBarItem(title: "Settings",
                                          image: UIImage(named: "settings"),
                                          selectedImage: nil)
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        selectedIndex = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarController()
        setupTheme()
        disableSomeItems()
    }
}

private extension TabBarController {
    func setupTabBarController() {
        let contactsTab = UIViewController()
        contactsTab.tabBarItem = contactsTabBarItem
        let myCardTab = MyCardViewController()
        myCardTab.tabBarItem = myCardTabBarItem
        let settingsTab = UIViewController()
        settingsTab.tabBarItem = settingsTabBarItem
        viewControllers = [contactsTab, myCardTab, settingsTab]
    }
    
    func setupTheme() {
        UITabBar.appearance().tintColor = UIColor(hex: 0x315CCF)
        UITabBar.appearance().backgroundColor = .white
    }
    
    func disableSomeItems() {
        contactsTabBarItem.isEnabled = false
        settingsTabBarItem.isEnabled = false
    }
}
