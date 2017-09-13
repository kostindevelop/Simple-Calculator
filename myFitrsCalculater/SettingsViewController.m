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
////    singleton
//    SettingsSingleton *singleton = [SettingsSingleton sharedInstance];
//    [self.nightModeSwitch setOn:singleton.nightModeEnabled];
//    [self.saveModeSwitch setOn:singleton.saveModeEnabled];
//    user default
    NSUserDefaults *settingsUserDef = [NSUserDefaults standardUserDefaults];
    [self.nightModeSwitch setOn:[settingsUserDef boolForKey:@"settingsNightMode"]];
    [self.saveModeSwitch setOn:[settingsUserDef boolForKey:@"settingsSaveMode"]];
}

- (IBAction)saveButtonTapped:(UIButton *)sender {
////    singleton
//    SettingsSingleton *singleton = [SettingsSingleton sharedInstance];
//    singleton.nightModeEnabled = self.nightModeSwitch.isOn;
//    singleton.saveModeEnabled = self.saveModeSwitch.isOn;
//    user default
    NSUserDefaults *settingsUserDef = [NSUserDefaults standardUserDefaults];
    [settingsUserDef setBool:self.nightModeSwitch.isOn forKey:@"settingsNightMode"];
    [settingsUserDef setBool:self.saveModeSwitch.isOn forKey:@"settingsSaveMode"];
}
@end
