//
//  NewsWorker.swift
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import UIKit

class NewsWorker: NSObject {
    var newsApi: NewsAPIProtocols
    
    init(newsApi: NewsAPIProtocols) {
        self.newsApi = newsApi
    }
    
    func getListNews(url: URL, completion: @escaping ([RSSItemEntity]) -> Void) {
        newsApi.getNews(url: url) { (rssFeed) in
            if rssFeed != nil {
                self.newsApi.saveRSSToDB(rss: rssFeed!) { (items) in
                    completion(items)
                }
            }
        }
    }
}
