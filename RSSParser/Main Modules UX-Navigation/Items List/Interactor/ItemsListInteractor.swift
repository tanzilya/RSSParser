//
//  ItemsListInteractor.swift
//  RSSParser
//
//  Created by a_ildarkin on 25/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import Foundation

class ItemsListInteractor {
//MARK: - Class Variables
    weak var output: ItemsListInteractorOutput!
}

//MARK: - *** ItemsListInteractorInput ***

extension ItemsListInteractor: ItemsListInteractorInput {
    func prepareDataWithSavedUrl() {
        //TODO: fetch data
        output.dataReady(items: [])
    }
    
    func prepareData(for rssUrl: URL) {
        //TODO: fetch data
        output.dataReady(items: [])
    }
    
    func idOfRSSItemAtIndex(index: UInt) -> Int32 {
        //TODO: get id of rss item
        return 0
    }
}
