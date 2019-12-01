//
//  RSSItemEntity.m
//  RSSParser
//
//  Created by a_ildarkin on 25/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

#import "RSSItemEntity.h"

@implementation RSSItemEntity

+ (instancetype)rssItemWith:(NSString *)title andRssDescription:(NSString *)rssDescription andImage:(NSString *)imageUrl andDate:(NSDate*)date {
    RSSItemEntity *item = [RSSItemEntity new];
    [item loadWith:title andRssDescription:rssDescription andImage:imageUrl andDate:date];
    
    return item;
}

- (void)loadWith:(NSString *)title andRssDescription:(NSString *)rssDescription andImage:(NSString *)imageUrl andDate:(NSDate*)date {
    _title = title;
    _rssDescription = rssDescription;
    _imageUrl = imageUrl;
}

@end
