//
//  NewsItem+CoreDataProperties.h
//  
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//
//

#import "NewsItem+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface NewsItem (CoreDataProperties)

+ (NSFetchRequest<NewsItem *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSString *link;
@property (nullable, nonatomic, copy) NSString *itemDescription;
@property (nullable, nonatomic, copy) NSString *guid;
@property (nullable, nonatomic, copy) NSString *imageUrl;
@property (nullable, nonatomic, copy) NSDate *pubDate;

@end

NS_ASSUME_NONNULL_END
