//
//  FGViewController.m
//  FGRoute
//
//  Created by Arthur Sahakyan on 08/15/2017.
//  Copyright (c) 2017 Arthur Sahakyan. All rights reserved.
//

#import "FGViewController.h"
#import "FGRoute.h"
#import <CoreLocation/CoreLocation.h>

@interface FGViewController ()<CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *getwayLabel;
@property (weak, nonatomic) IBOutlet UILabel *ipLabel;
@property (weak, nonatomic) IBOutlet UILabel *ssidLabel;
@property (weak, nonatomic) IBOutlet UILabel *bssidLabel;
@property (weak, nonatomic) IBOutlet UILabel *ssidDataLabel;
@property (weak, nonatomic) IBOutlet UILabel *netmaskLabel;
@property (weak, nonatomic) IBOutlet UILabel *destinationLabel;

@property (strong, nonatomic) CLLocationManager *manager;
@end

@implementation FGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Is connected via wifi - %s", [FGRoute isWifiConnected] ? "YES" : "NO");
    NSLog(@"Wifi Route ip is - %@", [FGRoute getGatewayIP]);
    NSLog(@"Ip Address - %@", [FGRoute getIPAddress]);
    
    [self getLocationAccess];
    [self showOnView];
}

/// This Method is used to request auth for location, so FGRoute can fetch ssid and bssid, starting from ios 13 you have 3 opetions, have a location access, special entertiment, or be a VPN application, and also you need to have "Access WiFi Information" entitlement enabled
- (void)getLocationAccess {
    [self showSSIDInfo];
    
    self.manager = [[CLLocationManager alloc] init];
    [self.manager requestAlwaysAuthorization];
    self.manager.delegate = self;
}

- (void)showOnView {
    self.getwayLabel.text = [NSString stringWithFormat:@"Wifi Route ip is - %@", [FGRoute getGatewayIP]];
    self.ipLabel.text = [NSString stringWithFormat:@"Ip Address - %@", [FGRoute getIPAddress]];
}

- (void)showSSIDInfo {
    NSLog(@"Wifi Name - %@", [FGRoute getSSID]);
    NSLog(@"Wifi BSSID - %@", [FGRoute getBSSID]);
    NSLog(@"Wifi SSIDData - %@", [FGRoute getSSIDDATA]);
    NSLog(@"Wifi Netmask - %@", [FGRoute getNetmask]);
    NSLog(@"Wifi Destination address - %@", [FGRoute getDestination]);

    self.ssidLabel.text = [NSString stringWithFormat:@"Wifi Name - %@", [FGRoute getSSID]];
    self.bssidLabel.text = [NSString stringWithFormat:@"Wifi BSSID - %@", [FGRoute getBSSID]];
    self.ssidDataLabel.text = [NSString stringWithFormat:@"Wifi SSIDData - %@", [FGRoute getSSIDDATA]];
    self.netmaskLabel.text = [NSString stringWithFormat:@"Wifi Netmask - %@", [FGRoute getNetmask]];
    self.destinationLabel.text = [NSString stringWithFormat:@"Wifi Destination address  - %@", [FGRoute getDestination]];
}

#pragma mark - CLLocationManagerDelegate -

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
    if((status == kCLAuthorizationStatusAuthorizedAlways) ||
       (status == kCLAuthorizationStatusAuthorizedWhenInUse)) {
        [self showSSIDInfo];
    }
}

@end
