//
//  NoImageTests.swift
//  Client
//
//  Created by Usha Garlapati on 6/13/17.
//  Copyright © 2017 Mozilla. All rights reserved.
//

import XCTest

class NoImageTests: BaseTestCase {
    
    var navigator: Navigator!
    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        app = XCUIApplication()
        navigator = createScreenGraph(app).navigator(self)
    }
    
    override func tearDown() {
        navigator = nil
        app = nil
        super.tearDown()
    }
    
    private func showImages() {
        app.buttons["TabToolbar.menuButton"].tap()
        app.collectionViews.containing(.cell, identifier:"FindInPageMenuItem").element.swipeLeft()
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery.cells["ShowImageModeMenuItem"].tap()
    }
    
    private func hideImages() {
        app.buttons["TabToolbar.menuButton"].tap()
        app.collectionViews.containing(.cell, identifier:"FindInPageMenuItem").element.swipeLeft()
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery.cells["HideImageModeMenuItem"].tap()
    }
    
    private func checkShowImages() {
        navigator.goto(BrowserTabMenu)
        app.collectionViews.containing(.cell, identifier:"FindInPageMenuItem").element.swipeLeft()
        waitforExistence(app.collectionViews.cells["ShowImageModeMenuItem"])
        navigator.goto(BrowserTab)
    }
    
    private func checkHideImages() {
        navigator.goto(BrowserTabMenu)
        app.collectionViews.containing(.cell, identifier:"FindInPageMenuItem").element.swipeLeft()
        waitforExistence(app.collectionViews.cells["HideImageModeMenuItem"])
        navigator.goto(BrowserTab)
    }
    
    
    func testBrowseUI() {
        let url1 = "www.google.com"
        
        // Go to a webpage, and select no images or hide images, check it's hidden or not
        navigator.openNewURL(urlString: url1)
        hideImages()
        checkShowImages()
        
        // Load a same page on a new tab, check images are hidden
        //navigator.goto(NewTabScreen)
        navigator.openNewURL(urlString: url1)
        
        // Open it, then select show images it, and check it's showing the images
        showImages()
        checkHideImages()
    }
    
}
