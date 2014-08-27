//
//  MainViewController.m
//  MyKeychain
//
//  Created by Johannes on 14-4-18.
//  Copyright (c) 2014年 何江浩. All rights reserved.
//

#import "MainViewController.h"
#import "KeychainItemWrapper.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize itemWrapper = _itemWrapper;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.itemWrapper  = [[KeychainItemWrapper alloc] initWithIdentifier:@"MyKeychain" accessGroup:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) showKeychain:(id)sender{
    NSString *msg = [_itemWrapper objectForKey:(id)kSecAttrAccount];
    [self showAlert:msg];
    NSLog(@"showKeychain:%@",[_itemWrapper keychainItemData]);
//    class = genp;
//    gena = MyKeychain;
//    "m_Limit" = "m_LimitOne";
//    "r_Attributes" = 1;
//}
}

- (void) dealloc{
    self.itemWrapper = nil;
    [super dealloc];
}

- (void) setKeychain:(id)sender{
    
    //KeychainItemWrapper *aItem = [[KeychainItemWrapper alloc] initWithIdentifier:@"MyKeychain" accessGroup:nil];
    //[aItem setObject:@"123456" forKey:(__bridge id)kSecValueData];
    NSString *str = _textField.text;
    if ([str isEqualToString:@""]) {
        [self showAlert:@"字符串不能为空！"];
        return;
    }
    [_itemWrapper setObject:str forKey:(id)kSecValueData];
    NSLog(@"setKeychain");
}


- (void) showAlert:(NSString *)msg{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提醒" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    [alert release];
}

- (BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if ([string isEqualToString:@"t"]) {
        return NO;
    }
    else{
        return YES;
    }
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
