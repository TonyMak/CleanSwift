//
//  EditProfileConfigurator.swift
//  CleanSwiftDemo
//
//  Created by Tony Mak on 06/03/2020.
//  Copyright © 2020 Tony Mak. All rights reserved.
//

import UIKit

class EditProfileConfigurator {
    class func createScene() -> EditProfileViewController {
        let viewController = EditProfileViewController(nibName: nil, bundle: nil)
        let interactor = EditProfileInteractor()
        let presenter = EditProfilePresenter()
        let router = EditProfileRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
        
        return viewController
    }
}
