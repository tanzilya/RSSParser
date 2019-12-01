//
//  ItemsListInteractorProtocols.swift
//  RSSParser
//
//  Created by a_ildarkin on 25/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import Foundation

//MARK: - *** ItemsListInteractorInput ***

protocol ItemsListInteractorInput {
    func prepareDataWithSavedUrl()
    func prepareData(for rssUrl: URL)
    func idOfRSSItemAtIndex(index: UInt) -> Int32
}

//MARK: - *** ItemsListInteractorOutput ***

protocol ItemsListInteractorOutput: class {
    func dataReady(items: [RSSItemEntity])
}
