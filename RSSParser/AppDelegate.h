//
//  AppDelegate.h
//  RSSParser
//
//  Created by a_ildarkin on 14/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

