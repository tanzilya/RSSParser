//
//  ItemsListViewProtocols.swift
//  RSSParser
//
//  Created by a_ildarkin on 25/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import Foundation

//MARK: - *** FavoritesViewInput ***

@objc(RSSItemsListViewInput)
protocol ItemsListViewInput: NSObjectProtocol {
    func prepare(with placesContent: [RSSItemEntity])
}

//MARK: - *** FavoritesViewOutput ***

@objc(RSSItemsListViewOutput)
protocol ItemsListViewOutput: NSObjectProtocol {
    func postViewDidLoad()
    func urlWasTyped(_ url: URL)
    func didTapedOnRSSItem(_ index: UInt)
}
