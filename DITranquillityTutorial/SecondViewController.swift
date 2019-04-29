//
//  SecondViewController.swift
//  DITranquillityTutorial
//
//  Created by Nikita on 29/04/2019.
//  Copyright © 2019 Nikita. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
	
	var secondPresenter: SecondPresenter!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		secondPresenter.printOne()
	}
}
