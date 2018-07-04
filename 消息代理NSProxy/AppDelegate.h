//
//  AppDelegate.h
//  消息代理NSProxy
//
//  Created by jorgon on 03/07/18.
//  Copyright © 2018年 jorgon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

