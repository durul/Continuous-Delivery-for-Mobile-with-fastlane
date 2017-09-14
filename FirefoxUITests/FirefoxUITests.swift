//
//  FirefoxUITests.swift
//  FirefoxUITests
//
//  Created by Doron Katz on 9/12/17.
//  Copyright © 2017 Mozilla. All rights reserved.
//

import XCTest

class FirefoxUITests: XCTestCase {
        
    override func setUp() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        snapshot("01HomeScreen")
        app.collectionViews.collectionViews.cells["twitter"].tap()
        snapshot("02Twitter")
        app.buttons["TabToolbar.menuButton"].tap()
        app.collectionViews.cells["NewTabMenuItem"].tap()
        snapshot("03NewTab")
        
        
        
    }
    
}
