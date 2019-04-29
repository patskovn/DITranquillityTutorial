//
//  ViewController.swift
//  DITranquillityTutorial
//
//  Created by Nikita on 29/04/2019.
//  Copyright © 2019 Nikita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	var presenter: Presenter!
	var router: Router!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		presenter.getCounter { counterValue in
			print(counterValue)
		}
	}
	
	@IBAction func presentNewController() {
		router.presentNewController()
	}
}

