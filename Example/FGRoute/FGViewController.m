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
@property (weak, nonatomic) IBOutlet UILabel *getwayLabel;
@property (weak, nonatomic) IBOutlet UILabel *ipLabel;
@property (weak, nonatomic) IBOutlet UILabel *ssidLabel;
@property (weak, nonatomic) IBOutlet UILabel *bssidLabel;
@property (weak, nonatomic) IBOutlet UILabel *ssidDataLabel;

@end

@implementation FGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Is connected via wifi - %s", [FGRoute isWifiConnected] ? "YES" : "NO");
    NSLog(@"Wifi Route ip is - %@", [FGRoute getGatewayIP]);
    NSLog(@"Wifi Name - %@", [FGRoute getSSID]);
    NSLog(@"Wifi BSSID - %@", [FGRoute getBSSID]);
    NSLog(@"Wifi SSIDData - %@", [FGRoute getSSIDDATA]);
    NSLog(@"Ip Address - %@", [FGRoute getIPAddress]);
    [self showOnView];
}

- (void)showOnView {
    self.getwayLabel.text = [NSString stringWithFormat:@"Wifi Route ip is - %@", [FGRoute getGatewayIP]];
    self.ipLabel.text = [NSString stringWithFormat:@"Ip Address - %@", [FGRoute getIPAddress]];
    self.ssidLabel.text = [NSString stringWithFormat:@"Wifi Name - %@", [FGRoute getSSID]];
    self.bssidLabel.text = [NSString stringWithFormat:@"Wifi BSSID - %@", [FGRoute getBSSID]];
    self.ssidDataLabel.text = [NSString stringWithFormat:@"Wifi SSIDData - %@", [FGRoute getSSIDDATA]];
}

@end
