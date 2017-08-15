//
//  Getway.m
//  Volterman
//
//  Created by Arthur Sahakyan on 6/8/17.
//  Copyright © 2017 VTGSoftware. All rights reserved.
//

#import "FGRoute.h"
#import "IpHelper.h"
#import <arpa/inet.h>
#import <SystemConfiguration/CaptiveNetwork.h>

@implementation FGRoute

+ (NSString *)getGatewayIP {
    NSString *ipString = nil;
    struct in_addr gatewayaddr;
    int r = getdefaultgateway(&(gatewayaddr.s_addr));
    if(r >= 0) {
        ipString = [NSString stringWithFormat: @"%s",inet_ntoa(gatewayaddr)];
    } else {
        NSLog(@"getdefaultgateway() failed");
    }
    
    return ipString;
}

+ (NSString *)getSSID {
    NSDictionary *info = [self getInterfaces];
    return info[@"SSID"];
}

+ (NSString *)getBSSID {
    NSDictionary *info = [self getInterfaces];
    return info[@"BSSID"];
}

+ (NSString *)getSSIDDATA {
    NSDictionary *info = [self getInterfaces];
    return info[@"SSIDDATA"];
}

+ (NSDictionary *)getInterfaces {
    NSArray *interFaceNames = (__bridge_transfer id)CNCopySupportedInterfaces();
    
    for (NSString *name in interFaceNames) {
        NSDictionary *info = (__bridge_transfer id)CNCopyCurrentNetworkInfo((__bridge CFStringRef)name);
        return info;
    }
}

@end
