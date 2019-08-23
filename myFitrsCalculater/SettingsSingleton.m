//
//  SettingsSingleton.m
//  myFitrsCalculater
//
//  Created by Konstantin Igorevich on 9/5/17.
//  Copyright © 2017 Konstantin Igorevich. All rights reserved.
//

#import "SettingsSingleton.h"

@implementation SettingsSingleton

+ (instancetype)sharedInstance
{
    static SettingsSingleton *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[SettingsSingleton alloc] init];
    });
    return sharedInstance;
}

@end
