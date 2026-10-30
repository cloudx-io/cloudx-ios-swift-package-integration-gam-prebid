@import CloudXGAMPrebid;
@import CloudXGAMPrebidPackage;
@import XCTest;

@interface CloudXGAMPrebidObjCTests : XCTestCase
@end

@implementation CloudXGAMPrebidObjCTests

- (void)testFrameworkIsLinked {
    XCTAssertEqualObjects(CLX_SDK_INTEGRATIONS_GAM_PREBID_VERSION, @"1.0.0");
    XCTAssertNotNil(NSClassFromString(@"CloudXGAMBannerAdapter"));
}

@end
