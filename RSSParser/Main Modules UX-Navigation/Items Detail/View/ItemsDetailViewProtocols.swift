//
//  ItemsDetailViewProtocols.swift
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import Foundation

//MARK: - *** NewsDetailViewInput ***

@objc(RSSItemsDetailViewInput)
protocol ItemsDetailViewInput: NSObjectProtocol {
    func prepare(with placesContent: [Any])
}

//MARK: - *** NewsDetailViewOutput ***

@objc(RSSItemsDetailViewOutput)
protocol ItemsDetailViewOutput: NSObjectProtocol {
    func postViewDidLoad()
    func didTapedOnOpenWebSite(_ url: URL)
}
