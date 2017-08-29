//
//  ViewController.m
//  myFitrsCalculater
//
//  Created by Konstantin Igorevich on 26.08.17.
//  Copyright © 2017 Konstantin Igorevich. All rights reserved.

#import "ViewController.h"
#import "Model.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (strong, nonatomic) NSString *firstValue;
@property (assign, nonatomic) NSInteger action;
@property (strong, nonatomic) NSMutableArray *memory;
//@property (assign, nonatomic) BOOL boolValue;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.resultLabel.text = @"0";
    self.memory = [[NSMutableArray alloc] init];
}

- (IBAction)onZeroDidTap:(UIButton *)sender {
    [self updateResultLabel:@"0"];
}
- (IBAction)onPointDidTap:(UIButton *)sender {
    [self updateResultLabel:@"."];
    [self.memory addObject:@"."];

}
- (IBAction)onEqualDidTap:(UIButton *)sender {
    NSString *result;
    [self.memory addObject:self.firstValue];
    //find type method calculate
    switch (self.action) {
        case 1:
            [self.memory addObject:@"+"];
            result = [Model calculatePlusWithFirst:self.firstValue second:self.resultLabel.text];
            break;
        case 2:
            [self.memory addObject:@"-"];
            result = [Model calculateMinusWithFirst:self.firstValue second:self.resultLabel.text];
            break;
        case 3:
            [self.memory addObject:@"*"];
            result = [Model calculateMultiplyWithFirst:self.firstValue second:self.resultLabel.text];
            break;
        case 4:
            [self.memory addObject:@"/"];
            if ([self.resultLabel.text  isEqual: @"0"]) {
                NSLog(@"ERROR");
//                self.resultLabel.text = @"ERORR";
            }
            NSLog(@"TEST devision");
            result = [Model calculateDevisionWithFirst:self.firstValue second:self.resultLabel.text];
            break;
    }
    self.resultLabel.text = result;
    self.firstValue = nil;
    NSLog(@"%@", self.memory);

}
- (IBAction)onOneDidTap:(UIButton *)sender {
    [self updateResultLabel:@"1"];
}
- (IBAction)onTwoDidTap:(UIButton *)sender {
    [self updateResultLabel:@"2"];
}
- (IBAction)onThreeDidTap:(UIButton *)sender {
    [self updateResultLabel:@"3"];
}
- (IBAction)onPlusDidTap:(UIButton *)sender {
    self.firstValue = self.resultLabel.text;
    self.resultLabel.text = @"0";
    self.action = 1;
    [self.memory addObject:@"+"];

    NSLog(@"=============%@", self.firstValue);
}
- (IBAction)onFourDidTap:(UIButton *)sender {
    [self updateResultLabel:@"4"];
}
- (IBAction)onFiveDidTap:(UIButton *)sender {
    [self updateResultLabel:@"5"];
}
- (IBAction)onSixDidTap:(UIButton *)sender {
    [self updateResultLabel:@"6"];
}
- (IBAction)onMinusDidTap:(UIButton *)sender {
    self.firstValue = self.resultLabel.text;
    self.resultLabel.text = @"0";
    self.action = 2;
    [self.memory addObject:@"-"];

}
- (IBAction)onSevenDidTap:(UIButton *)sender {
    [self updateResultLabel:@"7"];
}
- (IBAction)onEightDidTap:(UIButton *)sender {
    [self updateResultLabel:@"8"];
}
- (IBAction)onNineDidTap:(UIButton *)sender {
    [self updateResultLabel:@"9"];
}
- (IBAction)onMultiplyDidTap:(UIButton *)sender {
    self.firstValue = self.resultLabel.text;
    self.resultLabel.text = @"0";
    self.action = 3;
    [self.memory addObject:@"x"];

}
- (IBAction)onClearDidTap:(UIButton *)sender {
    self.resultLabel.text = @"0";
    self.firstValue = nil;
}
- (IBAction)onPlusMinusDidTap:(UIButton *)sender {
}
- (IBAction)onPercentDidTap:(UIButton *)sender {
}
- (IBAction)onDivisionDidTap:(UIButton *)sender {
    self.firstValue = self.resultLabel.text;
    self.resultLabel.text = @"0";
    self.action = 4;
    [self.memory addObject:@"/"];

}

-(void)updateResultLabel:(NSString *)number {
    if ([self.resultLabel.text isEqualToString:@"0"]) {
        self.resultLabel.text = number;
    }else{
        self.resultLabel.text = [NSString stringWithFormat:@"%@%@", self.resultLabel.text, number];
    }

}

@end
