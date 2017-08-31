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
@property (weak, nonatomic) IBOutlet UILabel *memoryLabel;

@property (strong, nonatomic) NSString *firstValue;
@property (assign, nonatomic) NSInteger action;
@property (strong, nonatomic) NSMutableArray *memory;

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
    if (![self.resultLabel.text containsString:@"."]) {
        [self updateResultLabel:@"."];
    }
}
- (IBAction)onEqualDidTap:(UIButton *)sender {
    NSString *result;
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
            result = [Model calculateDevisionWithFirst:self.firstValue second:self.resultLabel.text];
            break;
    }
    [self setMemoryText];
    [self.memory removeAllObjects];
    self.resultLabel.text = result;
    self.firstValue = nil;
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
    [self.memory addObject:self.firstValue];
    self.resultLabel.text = @"0";
    self.action = 1;
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
    [self.memory addObject:self.firstValue];
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
    [self.memory addObject:self.firstValue];
    self.resultLabel.text = @"0";
    self.action = 3;
}
- (IBAction)onClearDidTap:(UIButton *)sender {
    self.resultLabel.text = @"0";
    self.firstValue = nil;
}
- (IBAction)onPlusMinusDidTap:(UIButton *)sender {
    if ([self.resultLabel.text containsString:@"-"]) {
        self.resultLabel.text = [self.resultLabel.text stringByReplacingOccurrencesOfString:@"-" withString:@""];
    }else{
        self.resultLabel.text = [NSString stringWithFormat:@"-%@", self.resultLabel.text];
    }
}
- (IBAction)onPercentDidTap:(UIButton *)sender {
    self.resultLabel.text = [Model calculatePercentWithFirst:self.firstValue second:self.resultLabel.text];
}
- (IBAction)onDivisionDidTap:(UIButton *)sender {
    self.firstValue = self.resultLabel.text;
    [self.memory addObject:self.firstValue];
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
-(void)setMemoryText{
    if (self.memory.count > 1) {
        self.memoryLabel.text = [NSString stringWithFormat:@"%@%@%@", [self.memory objectAtIndex:0], [self.memory objectAtIndex:1], self.resultLabel.text];
    }
}

@end
