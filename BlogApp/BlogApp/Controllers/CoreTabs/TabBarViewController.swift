//
//  TabBarViewController.swift
//  BlogApp
//
//  Created by Burak Emre gündeş on 7.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpControllers()
    }
    
    
    private func setUpControllers(){
        let home = HomeViewController()
        home.title = "Home"
        
        let profile = ProfileViewController()
        profile.title="Profile"
        
        // ekran kaydırıldığı zamanda başlık büyük kalıyor
        home.navigationItem.largeTitleDisplayMode = .always
        profile.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: home)
        let nav2 = UINavigationController(rootViewController: profile)
         
        // başlığın formatını ayarlıyor
        nav1.navigationBar.prefersLargeTitles=true
        nav2.navigationBar.prefersLargeTitles=true
        
        nav1.tabBarItem=UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem=UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 2)
        
        
        setViewControllers([nav1,nav2], animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
