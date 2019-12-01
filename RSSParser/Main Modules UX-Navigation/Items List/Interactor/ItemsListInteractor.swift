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
    var apiWorker: NewsWorker = NewsWorker(newsApi: NewsAPI())
}

//MARK: - *** ItemsListInteractorInput ***

extension ItemsListInteractor: ItemsListInteractorInput {
    func prepareDataWithSavedUrl() {
        //TODO: fetch data
        output.dataReady(items: [])
    }
    
    func prepareData(for rssUrl: URL) {
        apiWorker.getListNews(url: rssUrl, completion: { (items) in
            self.output.dataReady(items: items)
        })        
    }
    
    func idOfRSSItemAtIndex(index: UInt) -> Int32 {
        //TODO: get id of rss item
        return 0
    }
}
