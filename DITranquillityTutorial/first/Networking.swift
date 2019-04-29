//
//  Networking.swift
//  DITranquillityTutorial
//
//  Created by Nikita on 29/04/2019.
//  Copyright © 2019 Nikita. All rights reserved.
//

import Foundation

protocol Networking: class {
	func fetchData(completion: @escaping (Result<Int, Error>) -> Void)
}

class MyNetworking: Networking {
	
	func fetchData(completion: @escaping (Result<Int, Error>) -> Void) {
		completion(.success(200))
	}
	
}
