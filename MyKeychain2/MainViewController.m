//
//  MainViewController.m
//  MyKeychain2
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
    self.itemWrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@"MyKeychain" accessGroup:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) showPass:(id)sender{
    NSString *msg = [_itemWrapper objectForKey:(id)kSecValueData];
    [self showAlert:msg];
    
    
}
/*
- (NSString*)getSerialNumber
{
    [[UIDevice currentDevice] ]
    CFTypeRef serialNumberAsCFString;
    
    io_service_t platformExpert = IOServiceGetMatchingService(kIOMasterPortDefault, IOServiceMatching("IOPlatformExpertDevice"));
    
    if (platformExpert)
    {
        serialNumberAsCFString = IORegistryEntryCreateCFProperty(platformExpert, CFSTR (kIOPlatformSerialNumberKey), kCFAllocatorDefault, 0);
    }
    
    IOObjectRelease(platformExpert);
    
    NSString *serial = [[NSString alloc] initWithFormat:@"%@",serialNumberAsCFString];
    
    NSLog(@"serail no==>%@",serialNumberAsCFString);
    NSLog(@"serail no==>%@",serial);
}*/

- (void) dealloc{
    self.itemWrapper = nil;
    [super dealloc];
}


- (void) showAlert:(NSString *)msg{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提醒" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    [alert release];
}

@end
