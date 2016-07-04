//
//  ViewController.h
//  FontingAwesome-ios-0616
//
//  Created by Bettina on 6/30/16.
//  Copyright © 2016 Bettina. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "CWStatusBarNotification.h"
#import "FontAwesomeKit/FontAwesomeKit.h"
#import "FontAwesomeKit/FAKFontAwesome.h"
#import "FontAwesomeKit/FAKFoundationIcons.h"
#import "FontAwesomeKit/FAKZocial.h"
#import "FontAwesomeKit/FAKIonIcons.h"
#import "CWStatusBarNotification.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) FAKFontAwesome *starIcon;
@property (strong, nonatomic) FAKFoundationIcons *bookmarkIcon;
@property (strong, nonatomic) FAKZocial *twitterIcon;
@property (strong, nonatomic) FAKIonIcons *mailIcon;
@property (strong, nonatomic) CWStatusBarNotification *notification;

@end

