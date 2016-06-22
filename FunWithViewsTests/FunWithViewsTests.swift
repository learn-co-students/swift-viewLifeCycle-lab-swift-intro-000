//
//  FunWithViewsTests.swift
//  FunWithViewsTests
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import XCTest
@testable import FunWithViews

class FunWithViewsTests: XCTestCase {

    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        viewController = ViewController(nibName: nil, bundle: nil)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testRandomDiceRoll() {
        for _ in 1...10 {
            let roll = viewController.randomDiceRoll()
            XCTAssertTrue(roll >= 1 && roll <= 6)
        }
    }
}
