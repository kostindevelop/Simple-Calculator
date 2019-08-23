//
//  SettingsSingleton.h
//  myFitrsCalculater
//
//  Created by Konstantin Igorevich on 9/5/17.
//  Copyright © 2017 Konstantin Igorevich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingsSingleton : NSObject

@property (nonatomic, assign) BOOL nightModeEnabled;
@property (nonatomic, assign) BOOL saveModeEnabled;

+ (instancetype)sharedInstance;



@end
