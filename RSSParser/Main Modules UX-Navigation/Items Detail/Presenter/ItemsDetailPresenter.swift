//
//  ItemsDetailPresenter.swift
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import UIKit


class ItemsDetailPresenter: NSObject {
    
    weak var view: ItemsDetailViewInput!
    var interactor: ItemsDetailInteractorInput!
    var router: ItemsDetailRouterInput!
}

//MARK: - *** ItemsDetailViewOutput ***

extension ItemsDetailPresenter: ItemsDetailViewOutput {
    
    func didTapedOnOpenWebSite(url: String) {
        router.didTapedOnOpenWebSite(url: url)
    }
    
    func postViewDidLoad() {

    }
    
}

//MARK: - *** ItemsDetailInteractorOutput ***

extension ItemsDetailPresenter: ItemsDetailInteractorOutput {
    
    func dataReady(item: NSManagedObject) {
        view.prepare(with: item)
    }
}

