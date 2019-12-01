//
//  NewsProtocols.swift
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import Alamofire
import AlamofireRSSParser

protocol NewsAPIProtocols {
    func getNews(url: URL, completion: @escaping (RSSFeed?) -> Void)
    func saveRSSToDB(rss: RSSFeed, completion: @escaping ([RSSItemEntity]) -> Void)
    func fetchRSSItems() -> [RSSItemEntity]
    func fetchRecordsAndGetGUID(index: Int) -> String
}
