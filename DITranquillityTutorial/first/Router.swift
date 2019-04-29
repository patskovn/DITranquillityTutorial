//
//  Router.swift
//  DITranquillityTutorial
//
//  Created by Nikita on 29/04/2019.
//  Copyright © 2019 Nikita. All rights reserved.
//

import UIKit

protocol Router: class {
	func presentNewController()
}

class MyRouter: Router {
	
	unowned let viewController: ViewController
	
	init(viewController: ViewController) {
		self.viewController = viewController
	}
	
	func presentNewController() {
		viewController.performSegue(withIdentifier: "RouteToSecond", sender: viewController)
	}
}
