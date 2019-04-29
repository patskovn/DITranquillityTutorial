//
//  Presenter.swift
//  DITranquillityTutorial
//
//  Created by Nikita on 29/04/2019.
//  Copyright © 2019 Nikita. All rights reserved.
//

import Foundation

protocol Presenter: class {
	func getCounter(completion: @escaping (Int) -> Void)
}

class MyPresenter: Presenter {
	
	private let networking: Networking
	
	init(networking: Networking) {
		self.networking = networking
	}
	
	func getCounter(completion: @escaping (Int) -> Void) {
		networking.fetchData { result in
			if let successValue = try? result.get() {
				completion(successValue)
			}
		}
	}
	
}
