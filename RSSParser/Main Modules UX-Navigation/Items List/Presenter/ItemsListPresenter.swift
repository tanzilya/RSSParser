
//
//  ItemsListPresenter.swift
//  RSSParser
//
//  Created by a_ildarkin on 25/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import Foundation

class ItemsListPresenter: NSObject {
    
    weak var view: ItemsListViewInput!
    var interactor: ItemsListInteractorInput!
    var router: ItemsListRouterInput!
}

//MARK: - *** ItemsListViewOutput ***

extension ItemsListPresenter: ItemsListViewOutput {
    func urlWasTyped(_ url: URL) {
        interactor.prepareData(for: url)
    }
    
    func postViewDidLoad() {
        interactor.prepareDataWithSavedUrl()
    }
    
    func didTapedOnRSSItem(_ index: UInt) {
        let id = interactor.idOfRSSItemAtIndex(index: index)
        router.openRSSDetails(id)
    }
}

//MARK: - *** ItemsListInteractorOutput ***

extension ItemsListPresenter: ItemsListInteractorOutput {
    func dataReady(items: [RSSItemEntity]) {
        view.prepare(with: items)
    }
}
