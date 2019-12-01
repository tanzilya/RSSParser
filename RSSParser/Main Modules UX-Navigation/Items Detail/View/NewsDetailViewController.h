//
//  NewsDetailViewController.h
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RSSItemsDetailViewOutput;
@interface NewsDetailViewController : UIViewController
@property (nonatomic, strong) id output;
@end
