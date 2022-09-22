//
//  COVID_19_Health_Risk_Calculator_AppUITestsLaunchTests.swift
//  COVID-19 Health Risk Calculator AppUITests
//
//  Created by Jordan Yee on 27/07/22.
//

import XCTest

class COVID_19_Health_Risk_Calculator_AppUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
