//
//  EditProfileInteractor.swift
//  CleanSwiftDemo
//
//  Created by Tony Mak on 06/03/2020.
//  Copyright (c) 2020 Tony Mak. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol EditProfileBusinessLogic {
    func doSomething(request: EditProfile.Something.Request)
}

protocol EditProfileDataStore {
    //var name: String { get set }
}

class EditProfileInteractor: EditProfileBusinessLogic, EditProfileDataStore {
    var presenter: EditProfilePresentationLogic?
    var worker: EditProfileWorker?
    //var name: String = ""
  
    // MARK: Do something
  
    func doSomething(request: EditProfile.Something.Request) {
        worker = EditProfileWorker()
        worker?.doSomeWork()
    
        let response = EditProfile.Something.Response()
        presenter?.presentSomething(response: response)
    }
}