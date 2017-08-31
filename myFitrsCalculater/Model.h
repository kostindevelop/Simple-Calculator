//
//  Model.h
//  myFitrsCalculater
//
//  Created by Konstantin Igorevich on 27.08.17.
//  Copyright © 2017 Konstantin Igorevich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

+(NSString *)calculatePlusWithFirst:(NSString *)first second:(NSString *)second;
+(NSString *)calculateMinusWithFirst:(NSString *)first second:(NSString *)second;
+(NSString *)calculateMultiplyWithFirst:(NSString *)first second:(NSString *)second;
+(NSString *)calculateDevisionWithFirst:(NSString *)first second:(NSString *)second;
+(NSString *)calculatePercentWithFirst:(NSString *)first second:(NSString *)second;


@end
