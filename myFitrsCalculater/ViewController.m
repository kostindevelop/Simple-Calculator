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
@property (weak, nonatomic) NSMutableArray *memory;
//@property (assign, nonatomic) BOOL boolValue;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
        self.resultLabel.text = @"0";
}

- (IBAction)onZeroDidTap:(UIButton *)sender {
    [self updateResultLabel:@"0"];
}
- (IBAction)onPointDidTap:(UIButton *)sender {
    [self updateResultLabel:@"."];
    [_memory addObject:@"."];

}
- (IBAction)onEqualDidTap:(UIButton *)sender {
    NSString *result;
    //find type method calculate
    switch (self.action) {
        case 1:
            result = [Model calculatePlusWithFirst:self.firstValue second:self.resultLabel.text];
        case 2:
            result = [Model calculateMinusWithFirst:self.firstValue second:self.resultLabel.text];
        case 3:
            result = [Model calculateMultiplyWithFirst:self.firstValue second:self.resultLabel.text];
        case 4:
            if ([self.resultLabel.text  isEqual: @"0"]) {
                NSLog(@"ERORR");
//                self.resultLabel.text = @"ERORR";
            }
            NSLog(@"TEST devision");
            result = [Model calculateDevisionWithFirst:self.firstValue second:self.resultLabel.text];
    }
    self.resultLabel.text = result;
    self.firstValue = nil;
    NSLog(@"%@", _memory.description);
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
}

-(void)updateResultLabel:(NSString *)number {
    if ([self.resultLabel.text isEqualToString:@"0"]) {
        self.resultLabel.text = number;
    }else{
        self.resultLabel.text = [NSString stringWithFormat:@"%@%@", self.resultLabel.text, number];
    }
}

@end
