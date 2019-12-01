//
//  ItemsDetailInitializer.swift
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import UIKit

class ItemsDetailInitializer: NSObject {
    @IBOutlet weak var itemsDetailVC: NewsDetailViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let configurator = ItemsDetailConfigurator()
        configurator.configureModuleForViewInput(viewInput: itemsDetailVC)
    }
}

private class ItemsDetailConfigurator: NSObject {
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? NewsDetailViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: NewsDetailViewController) {
//        let router = ItemsListRouter()
//        
//        let presenter = ItemsListPresenter()
//        presenter.view = viewController as? ItemsListViewInput
//        presenter.router = router
//        
//        let interactor = ItemsListInteractor()
//        interactor.output = presenter
//        //TODO: add services (fetching and saving data). User abstraction!
//        
//        presenter.interactor = interactor
//        viewController.output = presenter
    }
}
