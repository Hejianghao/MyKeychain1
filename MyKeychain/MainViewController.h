//
//  MainViewController.h
//  MyKeychain
//
//  Created by Johannes on 14-4-18.
//  Copyright (c) 2014年 何江浩. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KeychainItemWrapper;
@interface MainViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic, retain) KeychainItemWrapper *itemWrapper;
@property (nonatomic, retain) IBOutlet UITextField *textField;

- (IBAction) setKeychain:(id)sender;
- (IBAction) showKeychain:(id)sender;

@end
