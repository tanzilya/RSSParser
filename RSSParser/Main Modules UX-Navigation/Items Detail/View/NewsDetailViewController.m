//
//  NewsDetailViewController.m
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

#import "NewsDetailViewController.h"
#import "RSSParser-Swift.h"

@interface NewsDetailViewController () <RSSItemsDetailViewInput>

@end

@implementation NewsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_output postViewDidLoad];
}

#pragma mark - setupUI

- (void) setupUI {
    self.navigationItem.rightBarButtonItem = self.webViewButton;
}

- (UIBarButtonItem*) webViewButton {
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(tapOnWebView)];
    return button;
}

- (void) tapOnWebView {
//    [_output didTapedOnOpenWebSite:@""];
}



#pragma mark - RSSItemsDetailViewInput

- (void) prepareWith:(id)placesContent {
    
}


@end
