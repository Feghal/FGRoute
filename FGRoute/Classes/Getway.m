//
//  Getway.m
//  Volterman
//
//  Created by Arthur Sahakyan on 6/8/17.
//  Copyright © 2017 VTGSoftware. All rights reserved.
//

#import "Getway.h"
#import "IpHelper.h"
#import <arpa/inet.h>

@implementation Getway

+ (NSString *)getGatewayIP {
    NSString *ipString = nil;
    struct in_addr gatewayaddr;
    int r = getdefaultgateway(&(gatewayaddr.s_addr));
    if(r >= 0) {
        ipString = [NSString stringWithFormat: @"%s",inet_ntoa(gatewayaddr)];
        NSLog(@"default gateway : %@", ipString );
    } else {
        NSLog(@"getdefaultgateway() failed");
    }
    
    return ipString;
}

@end
