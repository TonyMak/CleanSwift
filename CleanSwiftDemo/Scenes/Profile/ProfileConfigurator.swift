//
//  ProfileConfigurator.swift
//  CleanSwiftDemo
//
//  Created by Tony Mak on 06/03/2020.
//  Copyright © 2020 Tony Mak. All rights reserved.
//

import UIKit

class ProfileConfigurator {
    class func createScene() -> ProfileViewController {
        let viewController = ProfileViewController(nibName: nil, bundle: nil)
        let interactor = ProfileInteractor()
        let presenter = ProfilePresenter()
        let router = ProfileRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
        
        return viewController
    }
}
