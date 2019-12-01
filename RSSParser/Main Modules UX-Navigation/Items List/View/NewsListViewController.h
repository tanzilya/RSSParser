//
//  ViewController.h
//  RSSParser
//
//  Created by a_ildarkin on 14/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RSSItemsListViewOutput;

@interface NewsListViewController : UIViewController
@property (nonatomic, strong) id output;
@end

