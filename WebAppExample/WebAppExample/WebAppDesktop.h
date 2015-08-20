//
//  WebAppDesktop.h
//  WebAppExample
//
//  Created by LiHongli on 15/8/19.
//  Copyright (c) 2015年 李红力-易到用车iOS开发工程师. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DesktopModel : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *urlScheme;
@property (nonatomic, strong) NSString *moduleID;
@property (nonatomic, strong) NSString *imageName;



@end

@interface WebAppDesktop : NSObject


- (void)setObject:(DesktopModel *)model;


@end
