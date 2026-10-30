import CloudXGAMPrebid
import CloudXGAMPrebidPackage
import XCTest

final class CloudXGAMPrebidSwiftTests: XCTestCase {
    func testFrameworkIsLinked() {
        XCTAssertEqual(CLX_SDK_INTEGRATIONS_GAM_PREBID_VERSION, "1.0.0")
        XCTAssertNotNil(NSClassFromString("CloudXGAMBannerAdapter"))
    }
}
