//
//  FGViewController.m
//  FGRoute
//
//  Created by andranikasil84@gmail.com on 08/15/2017.
//  Copyright (c) 2017 andranikasil84@gmail.com. All rights reserved.
//

#import "FGViewController.h"
#import "FGRoute.h"

@interface FGViewController ()

@end

@implementation FGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Wifi Route ip is - %@", [FGRoute getGatewayIP]);
    NSLog(@"%@", [FGRoute getSSID]);
    NSLog(@"%@", [FGRoute getBSSID]);
    NSLog(@"%@", [FGRoute getSSIDDATA]);

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
