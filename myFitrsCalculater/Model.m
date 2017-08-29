//
//  Model.m
//  myFitrsCalculater
//
//  Created by Konstantin Igorevich on 27.08.17.
//  Copyright © 2017 Konstantin Igorevich. All rights reserved.
//

#import "Model.h"

@implementation Model
+(NSString *)calculatePlusWithFirst:(NSString *)first second:(NSString *)second{
    float firstNumber = first.floatValue;
    float secondNumber = second.floatValue;
    
    return [NSString stringWithFormat:@"%.2f", firstNumber + secondNumber];
}
+(NSString *)calculateMinusWithFirst:(NSString *)first second:(NSString *)second{
    float firstNumber = first.floatValue;
    float secondNumber = second.floatValue;
    
    return [NSString stringWithFormat:@"%.2f", firstNumber - secondNumber];
}
+(NSString *)calculateMultiplyWithFirst:(NSString *)first second:(NSString *)second{
    float firstNumber = first.floatValue;
    float secondNumber = second.floatValue;
    
    return [NSString stringWithFormat:@"%.2f", firstNumber * secondNumber];
}
+(NSString *)calculateDevisionWithFirst:(NSString *)first second:(NSString *)second{
    float firstNumber = first.floatValue;
    float secondNumber = second.floatValue;
    
    return [NSString stringWithFormat:@"%.2f", firstNumber / secondNumber];
}



@end
