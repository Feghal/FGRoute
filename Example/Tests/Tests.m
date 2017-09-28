//
//  FGRouteTests.m
//  FGRouteTests
//
//  Created by Arthur Sahakyan on 08/15/2017.
//  Copyright (c) 2017 Arthur Sahakyan. All rights reserved.
//

@import XCTest;
@import FGRoute;
@import Reachability;

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testRoute {
    NSString *getwayIp = [FGRoute getGatewayIP];
    Reachability *rich = [Reachability reachabilityForInternetConnection];
    if(rich.isReachableViaWiFi && !TARGET_IPHONE_SIMULATOR) {
        XCTAssertNotNil(getwayIp);
    } else {
        XCTAssertNil(getwayIp);
    }
}

- (void)testIp {
    NSString *ip = [FGRoute getIPAddress];
    XCTAssertNotNil(ip);
    Reachability *rich = [Reachability reachabilityForInternetConnection];
    if(rich.isReachableViaWiFi && !TARGET_IPHONE_SIMULATOR) {
        XCTAssertNotEqualObjects(ip, @"error");
    } else {
        XCTAssertEqualObjects(ip, @"error");
    }
}
    
- (void)testSSID {
    NSString *ssid = [FGRoute getSSID];
    Reachability *rich = [Reachability reachabilityForInternetConnection];
    if(rich.isReachableViaWiFi && !TARGET_IPHONE_SIMULATOR) {
        XCTAssertNotNil(ssid);
    } else {
        XCTAssertNil(ssid);
    }
}

- (void)testSSIDData {
    NSString *data = [FGRoute getSSIDDATA];
    Reachability *rich = [Reachability reachabilityForInternetConnection];
    if(rich.isReachableViaWiFi && !TARGET_IPHONE_SIMULATOR) {
        XCTAssertNotNil(data);
    } else {
        XCTAssertNil(data);
    }
}
    
- (void)testBSSID {
    NSString *bssid = [FGRoute getBSSID];
    Reachability *rich = [Reachability reachabilityForInternetConnection];
    if(rich.isReachableViaWiFi && !TARGET_IPHONE_SIMULATOR) {
        XCTAssertNotNil(bssid);
    } else {
        XCTAssertNil(bssid);
    }
}

@end

