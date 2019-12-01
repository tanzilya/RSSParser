//
//  NewsListItemCell.m
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

#import "NewsListItemCell.h"
#import "RSSItemEntity.h"

@interface NewsListItemCell()
@property (weak, nonatomic) IBOutlet UIImageView *imgImage;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;
@property (weak, nonatomic) IBOutlet UILabel *lblDesc;
@end

@implementation NewsListItemCell


- (void)configureWithEntity:(RSSItemEntity*)entity {
    self.lblTitle.text = entity.title;
    self.lblDesc.text = entity.rssDescription;
    // TODO: date & image
//    self.lblDate.text = entity.date;
}
@end
