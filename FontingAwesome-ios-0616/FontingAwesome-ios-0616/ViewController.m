//
//  ViewController.m
//  FontingAwesome-ios-0616
//
//  Created by Bettina on 6/30/16.
//  Copyright © 2016 Bettina. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *awesomeButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;
@property (weak, nonatomic) IBOutlet UIButton *thirdButton;
@property (weak, nonatomic) IBOutlet UIButton *fourthButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //creating icons below
    self.notification = [CWStatusBarNotification new];// makes notification bar load
    self.notification.notificationStyle = CWNotificationStyleNavigationBarNotification;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)firstButtonTouchUpInside:(id)sender {
    
    self.starIcon = [FAKFontAwesome starIconWithSize:15];
    [self.awesomeButton setAttributedTitle:[self.starIcon attributedString] forState:UIControlStateNormal];
    [self.notification dismissNotification];
}

- (IBAction)secondButtonTouchUpInside:(id)sender {
    self.bookmarkIcon =[FAKFoundationIcons bookmarkIconWithSize:15];
    [self.secondButton setAttributedTitle:[self.bookmarkIcon attributedString] forState:UIControlStateNormal];
     [self.notification dismissNotification];
}


- (IBAction)thirdButtonTouchUpInside:(id)sender {
    self.twitterIcon = [FAKZocial twitterIconWithSize:15];
    [self.thirdButton setAttributedTitle:[self.twitterIcon attributedString] forState:UIControlStateNormal];
     [self.notification dismissNotification];
}


- (IBAction)fourthButtonTouchUpInside:(id)sender {
    
    self.mailIcon = [FAKIonIcons iosEmailIconWithSize:48];
    [self.fourthButton setAttributedTitle:[self.mailIcon attributedString] forState:UIControlStateNormal];
     [self.notification dismissNotification];
}


//HOLD DOWN BUTTON ACTIONS!!


//-(IBACtion)secondCocoapod:(id)sender{self.notification displayNOtificationWithMessage:@"Hello, World!" forDuration:1.0f}
- (IBAction)awesomeButtonTouchDown:(id)sender {
    
    //we want the icons to appear when we hold down the buttons
    [self.notification displayNotificationWithAttributedString:[self.starIcon attributedString] completion:nil]; //completion is a "closure", you do a block of code when that happens. this takes an attributed string, which we created in the touchupInside methods (ie.starIcon).
}


- (IBAction)secondButtonTouchDown:(id)sender {
        [self.notification displayNotificationWithAttributedString:[self.bookmarkIcon attributedString] completion:nil];
    
}

//The framework makes it easy to put quick notifications in the iPhone's status bar. It's great for giving unobtrusive notifications to your user for things like updated data or incorrect form entries.
//Use CWStatusBarNotification's documentation to figure out how to tell your user that they are pressing (and holding) the button that has an awesome font.

- (IBAction)thirdButtonTouchDown:(id)sender {
    [self.notification displayNotificationWithAttributedString:[self.twitterIcon attributedString] completion:nil];
    
}


- (IBAction)fourthButtonTouchDown:(id)sender {
    
     [self.notification displayNotificationWithAttributedString:[self.mailIcon attributedString] completion:nil];
}


@end
