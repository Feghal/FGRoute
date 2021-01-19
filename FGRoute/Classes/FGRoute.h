//
//  FGRoute.h
//  FGRoute
//
//  Created by Arthur Sahakyan on 6/8/17.
//  Copyright © 2017 Arthur Sahakyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FGRoute : NSObject

/**
 Use this method to get @b WiFi @b Route ip address
 @return route ip address in string format
 */
+ (NSString *)getGatewayIP;

/**
 Use this method to get name of connected wifi
 @return connected wifi name
 */
+ (NSString *)getSSID;

/**
 Use this method to get @b BSSID of connected wifi
 @return connected wifi BSSID in string format
 */
+ (NSString *)getBSSID;

/**
 Use this method to get @b SSIDDATA of connected wifi
 @return connected wifi SSIDDATA in string format
 */
+ (NSString *)getSSIDDATA;

/**
 Use this method to get your device local ip address in connected wifi network
 @return local ip address in string format
 */
+ (NSString *)getIPAddress;

/**
 @return local ip address in string format
 */
+ (NSString *)getDestination;

/**
 @return netmask address in string format
 */
+ (NSString *)getNetmask;
/**

 @return @b true if wifi is connected, @b false if not
 */
+ (BOOL)isWifiConnected;

@end
