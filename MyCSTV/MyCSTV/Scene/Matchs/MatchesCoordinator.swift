//
//  MatchesCoordinator.swift
//  MyCSTV
//
//  Created by Abner Souza on 30/03/22.
//

import Foundation
import UIKit

class MatchesCoordinator: NavigationCoordinator {
    var isCompleted: (() -> Void)?
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
                      
    init() {
        self.rootViewController = UINavigationController()
    }
    
    func start() {
        let matchesViewController = ViewController(coordinator: self)
//      let matchesViewController = DefaultMatchesViewModel(coordinator: self)
//      matchesViewController.bind(to: MatchesViewModel)
        self.rootViewController.modalPresentationStyle = .fullScreen
        self.rootViewController.viewControllers = [matchesViewController]
    }
    
    func openDetails(matches: Matches) {
        let detailViewController = DetailsViewController(coordinator: self)
        detailViewController.modalPresentationStyle = .fullScreen
        self.rootViewController.isNavigationBarHidden = true
        self.rootViewController.pushViewController(detailViewController, animated: true)
    }
    
    func goBack() {
        self.rootViewController.popViewController(animated: true)
    }
}
