//
//  ProfileViewController.swift
//  BlogApp
//
//  Created by Burak Emre gündeş on 7.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "SignOut", style: .done, target: self, action: #selector(didTapSignOut))
    }
    
        
    @objc private func didTapSignOut(){
                
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
