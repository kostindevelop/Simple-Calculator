//
//  SettingsViewController.h
//  myFitrsCalculater
//
//  Created by Konstantin Igorevich on 9/6/17.
//  Copyright © 2017 Konstantin Igorevich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *nightModeSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *saveModeSwitch;

- (IBAction)saveButtonTapped:(UIButton *)sender;

@end
