//
//  AppDelegate.m
//  WebAppExample
//
//  Created by LiHongli on 15/8/19.
//  Copyright (c) 2015年 李红力-易到用车iOS开发工程师. All rights reserved.
//

#import "AppDelegate.h"
#import <CocoaHTTPServer/CocoaHTTPServer-umbrella.h>
#import <CocoaLumberjack/CocoaLumberjack.h>
#import "WebAppDesktop.h"

@interface AppDelegate ()

@property (nonatomic, strong) NSString *webRootDir;
@property (nonatomic, strong) NSString *mainPage;
@property (nonatomic, strong) HTTPServer *httpServer;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    DesktopModel *model = [[DesktopModel alloc] init];
    model.title = @"WebApp";
    model.urlScheme = @"WebAppExample://";
    model.moduleID = @"myWebAppExample";
    model.imageName = @"pocketbook";
    
    [[WebAppDesktop shareInstanced] setObject:model];;
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
