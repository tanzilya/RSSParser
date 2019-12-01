//
//  NewsAPI.swift
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import Alamofire
import AlamofireRSSParser

class NewsAPI: NewsAPIProtocols {
    func getNews(url: URL, completion: @escaping (RSSFeed?) -> Void) {
        Alamofire.request(url).responseRSS() { response in
            if let rssFeedXML = response.result.value {
                completion(rssFeedXML)
            } else {
                completion(nil)
            }
        }
    }
    
    func saveRSSToDB(rss: RSSFeed, completion: @escaping ([RSSItemEntity]) -> Void) {
        self.deletePreviousData()
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "NewsItem", in: context)
        rss.items.forEach { (rssItem) in
            let record = NSManagedObject(entity: entity!, insertInto: context)
            record.setValue(rssItem.title, forKey: "title")
            record.setValue(rssItem.itemDescription , forKey: "itemDescription")
            record.setValue(rssItem.link , forKey: "link")
            record.setValue(rssItem.guid , forKey: "guid")
            record.setValue(rssItem.imagesFromContent , forKey: "imageUrl")
            record.setValue(rssItem.pubDate , forKey: "pubDate")
            // TODO: fixed bugs
            do {
                try context.save()
            } catch {
                completion([])
            }
        }
        completion(self.fetchRSSItems())
    }
    
    func deletePreviousData() {
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let fetch = NSFetchRequest<NSFetchRequestResult>(entityName: "NewsItem")
        let request = NSBatchDeleteRequest(fetchRequest: fetch)
        do {
            try context.execute(request)
        }
        catch {
            debugPrint("error in emptying data base")
        }
    }
    
    func fetchRSSItems() -> [RSSItemEntity] {
        var resultItems: [RSSItemEntity] = []
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "NewsItem")
        request.sortDescriptors = [NSSortDescriptor(key: "pubDate", ascending: true)]
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                let item: RSSItemEntity = RSSItemEntity.rssItem(with: data.value(forKey: "title") as! String,
                                                                andRssDescription: data.value(forKey: "itemDescription") as! String,
                                                                andImage: (data.value(forKey: "imageUrl") ?? "") as! String,
                                                                andDate: data.value(forKey: "pubDate") as! Date)
                resultItems.append(item)
            }
        } catch {
            return ([])
        }
        return resultItems
    }
    
    func fetchRecordsAndGetGUID(index: Int) -> String {
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "NewsItem")
        request.sortDescriptors = [NSSortDescriptor(key: "pubDate", ascending: true)]
        request.returnsObjectsAsFaults = false
        do {
            let result: [NSManagedObject] = try context.fetch(request) as! [NSManagedObject]
            if result.count > 0 {
                return result[index].value(forKey: "guid") as! String
            }
        } catch {
            return ""
        }
        return ""
    }
}
