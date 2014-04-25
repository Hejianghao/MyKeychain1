//
//  MainViewController.h
//  MyKeychain2
//
//  Created by Johannes on 14-4-18.
//  Copyright (c) 2014年 何江浩. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KeychainItemWrapper;
@interface MainViewController : UIViewController

@property (nonatomic, retain) KeychainItemWrapper *itemWrapper;

- (IBAction) showPass:(id)sender;

@end
