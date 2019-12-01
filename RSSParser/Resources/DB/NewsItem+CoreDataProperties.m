//
//  NewsItem+CoreDataProperties.m
//  
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//
//

#import "NewsItem+CoreDataProperties.h"

@implementation NewsItem (CoreDataProperties)

+ (NSFetchRequest<NewsItem *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"NewsItem"];
}

@dynamic title;
@dynamic link;
@dynamic itemDescription;
@dynamic guid;
@dynamic categoties;
@dynamic imageUrl;
@dynamic pubDate;

@end
