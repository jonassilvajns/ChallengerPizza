//
//  LoginVIewController.swift
//  ChallengerPizza
//
//  Created by Jonas Silva on 21/09/22.
//



import UIKit


class LoginViewController: UIViewController {
    
    // MARK: - Propertties
    private let loginView: LoginView = {

        let loginView = LoginView()
        return loginView
    }()
    
    private let searchController: UISearchController = {
        let controller = UISearchController(searchResultsController: nil)
        controller.searchBar.placeholder = "Search Pizza"
        return controller
    }()
    
    
    // MARK: - Constructors
    
    
    
    // MARK: - Methods
    override func viewDidLoad() {
//        self.navigationController?.navigationBar.prefersLargeTitles = true
//        self.navigationItem.title = "Repositories"
//        self.navigationItem.titleView?.tintColor = .black
//        self.navigationItem.searchController = searchController
//        searchController.searchBar.endEditing(true)
    }
    
    

    
    override func loadView() {
        self.view = loginView
    }
}





