//
//  DependencyContainer.swift
//  DITranquillityTutorial
//
//  Created by Nikita on 29/04/2019.
//  Copyright © 2019 Nikita. All rights reserved.
//

import DITranquillity

class ApplicationDependency: DIFramework {
	
	static let container: DIContainer = {
		let container = DIContainer()
		container.append(framework: ApplicationDependency.self)
		
		assert(container.validate(checkGraphCycles: true), "Invalid dependency graph")
		
		return container
	}()
	
	static func load(container: DIContainer) {
		
		container.registerStoryboard(name: "Main")
			.as(check: UIStoryboard.self, tag: ViewController.self) {$0}
			.as(check: UIStoryboard.self, tag: SecondViewController.self) {$0}
		
		// VC1
		container.register(ViewController.self)
			.injection(cycle: true, \.router)
			.injection(\.presenter)
			.lifetime(.objectGraph)
		
		container.register1(MyPresenter.init)
			.as(check: Presenter.self) {$0}
		
		container.register(MyNetworking.init)
			.as(check: Networking.self) {$0}
		
		container.register1(MyRouter.init)
			.as(check: Router.self) {$0}
			.lifetime(.objectGraph)
		
		// VC2
		
		container.register(SecondViewController.self)
			.injection(\.secondPresenter)
		
		container.register(SecondPresenter.init)
	}
	
}
