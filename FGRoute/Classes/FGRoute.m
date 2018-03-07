//
//  Getway.m
//  Volterman
//
//  Created by Arthur Sahakyan on 6/8/17.
//  Copyright © 2017 Arthur Sahakyan. All rights reserved.
//

#import "FGRoute.h"
#import "IpHelper.h"
#import <arpa/inet.h>
#import <SystemConfiguration/CaptiveNetwork.h>
#include <ifaddrs.h>
#include <arpa/inet.h>

@implementation FGRoute

+ (NSString *)getGatewayIP {
    NSString *ipString = nil;
    struct in_addr gatewayaddr;
    int r = getdefaultgateway(&(gatewayaddr.s_addr));
    if(r >= 0) {
        ipString = [NSString stringWithFormat: @"%s",inet_ntoa(gatewayaddr)];
    } else {
        NSLog(@"Wifi is not connected or you are using simulator Gateway ip address will be nil");
    }
    
    return ipString;
}

+ (NSString *)getSSID {
    NSDictionary *info = [self getInterfaces];
    if (info[@"SSID"] == nil) {
        NSLog(@"Wifi is not connected or you are using simulator SSID will be nil");
    }
    return info[@"SSID"];
}

+ (NSString *)getBSSID {
    NSDictionary *info = [self getInterfaces];
    if (info[@"BSSID"] == nil) {
        NSLog(@"Wifi is not connected or you are using simulator BSSID will be nil");
    }
    return info[@"BSSID"];
}

+ (NSString *)getSSIDDATA {
    NSDictionary *info = [self getInterfaces];
    if (info[@"SSIDDATA"] == nil) {
        NSLog(@"Wifi is not connected or you are using simulator SSIDDATA will be nil");
    }
    return info[@"SSIDDATA"];
}

+ (NSDictionary *)getInterfaces {
    NSArray *interFaceNames = (__bridge_transfer id)CNCopySupportedInterfaces();
    
    for (NSString *name in interFaceNames) {
        NSDictionary *info = (__bridge_transfer id)CNCopyCurrentNetworkInfo((__bridge CFStringRef)name);
        return info;
    }
    return Nil;
}

+ (NSString *)getIPAddress {
    NSString *address = @"error";
    struct ifaddrs *interfaces = NULL;
    struct ifaddrs *temp_addr = NULL;
    int success = 0;
    // retrieve the current interfaces - returns 0 on success
    success = getifaddrs(&interfaces);
    if (success == 0) {
        // Loop through linked list of interfaces
        temp_addr = interfaces;
        while(temp_addr != NULL) {
            if(temp_addr->ifa_addr->sa_family == AF_INET) {
                // Check if interface is en0 which is the wifi connection on the iPhone
                if([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"]) {
                    // Get NSString from C String
                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
                    
                }
                
            }
            temp_addr = temp_addr->ifa_next;
        }
    }
    // Free memory
    freeifaddrs(interfaces);
    
    if ([address  isEqual: @"error"]) {
        NSLog(@"Wifi is not connected or you are using simulator ip address will be nil");
    }
    return address;
}
    
+ (BOOL)isWifiConnected {
    NSString *info = [self getGatewayIP];
    if (info) {
        return true;
    }
    return false;
}


@end
