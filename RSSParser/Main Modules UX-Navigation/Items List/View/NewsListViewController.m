//
//  ViewController.m
//  RSSParser
//
//  Created by a_ildarkin on 14/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

#import "NewsListViewController.h"
#import "RSSParser-Swift.h"
#import "NewsListItemCell.h"


@interface NewsListViewController () <RSSItemsListViewInput, UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray<RSSItemEntity *> * _Nonnull items;
@end

@implementation NewsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
    [_output postViewDidLoad];
}

#pragma mark - RSSItemsListViewInput

- (void)prepareWith:(NSArray<RSSItemEntity *> * _Nonnull)placesContent {
    self.items = placesContent;
    __weak __typeof(self) weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
        __strong __typeof(self) self = weakSelf;
        [self.tableView reloadData];
    });
}

#pragma mark - Actions

- (IBAction)onTapAddRSS:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Add RSS feed"
                                                                   message:@"Type URL for RSS feed"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"RSS url";
    }];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Ok"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {

        NSURL *url = [[NSURL alloc] initWithString:[[alert textFields][0] text]];
        if (url != nil) {
            __weak __typeof(self) weakSelf = self;
            dispatch_async(dispatch_get_main_queue(), ^{
                __strong __typeof(self) self = weakSelf;
                [self.output urlWasTyped: url];
            });
        }


                                                                }];
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                            style:UIAlertActionStyleCancel
                                                          handler:^(UIAlertAction * action) {
                                                                    
                                                                }];
    [alert addAction:defaultAction];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:^{}];

}
- (IBAction)onTapSearch:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Search"
                                                                   message:@"by title"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Search text";
    }];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Ok"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
        NSLog(@"Current password %@", [[alert textFields][0] text]);

                                                                }];
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                            style:UIAlertActionStyleCancel
                                                          handler:^(UIAlertAction * action) {
                                                                    
                                                                }];
    [alert addAction:defaultAction];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:^{}];
}
- (IBAction)onTapDelete:(id)sender {
    NSLog(@"delete");
}

#pragma mark - TableView Delegates and DataSourse

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _items.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 141;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NewsListItemCell* cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([NewsListItemCell class]) forIndexPath:indexPath];
    [cell configureWithEntity:[_items objectAtIndex:indexPath.row]];
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [_output didTapedOnRSSItem:indexPath.row];
}




@end
