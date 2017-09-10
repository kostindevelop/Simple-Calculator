//
//  SettingsViewController.m
//  myFitrsCalculater
//
//  Created by Konstantin Igorevich on 9/6/17.
//  Copyright © 2017 Konstantin Igorevich. All rights reserved.
//

#import "SettingsViewController.h"
#import "SettingsSingleton.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SettingsSingleton *singleton = [SettingsSingleton sharedInstance];
    [self.nightModeSwitch setOn:singleton.nightModeEnabled];
    [self.saveModeSwitch setOn:singleton.saveModeEnabled];
}

- (IBAction)saveButtonTapped:(UIButton *)sender {
    SettingsSingleton *singleton = [SettingsSingleton sharedInstance];
    singleton.nightModeEnabled = self.nightModeSwitch.isOn;
    singleton.saveModeEnabled = self.saveModeSwitch.isOn;
}
@end
