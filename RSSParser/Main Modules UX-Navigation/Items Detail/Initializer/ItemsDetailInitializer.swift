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
        let router = ItemsDetailRouter()
        
        let presenter = ItemsDetailPresenter()
        presenter.view = viewController as? ItemsDetailViewInput
        presenter.router = router
        
        let interactor = ItemsDetailInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        viewController.output = presenter
    }
}
