//
//  FGViewController.m
//  FGRoute
//
//  Created by Arthur Sahakyan on 08/15/2017.
//  Copyright (c) 2017 Arthur Sahakyan. All rights reserved.
//

#import "FGViewController.h"
#import "FGRoute.h"

@interface FGViewController ()

@end

@implementation FGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Wifi Route ip is - %@", [FGRoute getGatewayIP]);
    NSLog(@"%@", [FGRoute getSSID]);
    NSLog(@"%@", [FGRoute getBSSID]);
    NSLog(@"%@", [FGRoute getSSIDDATA]);
    NSLog(@"%@", [FGRoute getIPAddress]);
}

@end
