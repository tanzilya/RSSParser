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
        output.dataReady(items: apiWorker.fetchRSSItems())
    }
    
    func prepareData(for rssUrl: URL) {
        apiWorker.getListNews(url: rssUrl, completion: { (items) in
            self.output.dataReady(items: items)
        })        
    }
    
    func idOfRSSItemAtIndex(index: UInt) -> String {
        return apiWorker.fetchRecordsAndGetGUID(index: Int(index))
    }
}
