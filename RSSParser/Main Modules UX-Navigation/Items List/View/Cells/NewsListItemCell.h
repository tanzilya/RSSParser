//
//  NewsListItemCell.h
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSSItemEntity;
@interface NewsListItemCell : UITableViewCell
- (void)configureWithEntity:(RSSItemEntity*)entity;
@end
