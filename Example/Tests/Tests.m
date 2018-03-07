//
//  FGRouteTests.m
//  FGRouteTests
//
//  Created by Arthur Sahakyan on 08/15/2017.
//  Copyright (c) 2017 Arthur Sahakyan. All rights reserved.
//

@import XCTest;
@import FGRoute;

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
    if([FGRoute isWifiConnected]) {
        XCTAssertNotNil(getwayIp);
    } else {
        XCTAssertNil(getwayIp);
    }
}

- (void)testIp {
    NSString *ip = [FGRoute getIPAddress];
    XCTAssertNotNil(ip);
    if([FGRoute isWifiConnected]) {
        XCTAssertNotEqualObjects(ip, @"error");
    } else {
        XCTAssertEqualObjects(ip, @"error");
    }
}
    
- (void)testSSID {
    NSString *ssid = [FGRoute getSSID];
    if([FGRoute isWifiConnected] && !TARGET_IPHONE_SIMULATOR) {
        XCTAssertNotNil(ssid);
    } else {
        XCTAssertNil(ssid);
    }
}

- (void)testSSIDData {
    NSString *data = [FGRoute getSSIDDATA];
    if([FGRoute isWifiConnected] && !TARGET_IPHONE_SIMULATOR) {
        XCTAssertNotNil(data);
    } else {
        XCTAssertNil(data);
    }
}
    
- (void)testBSSID {
    NSString *bssid = [FGRoute getBSSID];
    if([FGRoute isWifiConnected] && !TARGET_IPHONE_SIMULATOR) {
        XCTAssertNotNil(bssid);
    } else {
        XCTAssertNil(bssid);
    }
}

@end

