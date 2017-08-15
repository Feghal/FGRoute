//
//  Getway.h
//  Volterman
//
//  Created by Arthur Sahakyan on 6/8/17.
//  Copyright © 2017 Arthur Sahakyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FGRoute : NSObject

+ (NSString *)getGatewayIP;

+ (NSString *)getSSID;

+ (NSString *)getBSSID;

+ (NSString *)getSSIDDATA;

+ (NSString *)getIPAddress;

@end
