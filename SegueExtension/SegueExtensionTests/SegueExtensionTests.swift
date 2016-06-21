//
//  SegueExtensionTests.swift
//  SegueExtensionTests
//
//  Created by matyushenko on 17.06.16.
//  Copyright © 2016 matyushenko. All rights reserved.
//

import XCTest
@testable import SegueExtension

class SegueExtensionTests: XCTestCase {
    
    var window: UIWindow?
    var storyboard: UIStoryboard?
    
    var testedController: TestedViewController?
    var secondViewController: SecondViewController?
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.storyboard = UIStoryboard.init(name: "MainStoryboard", bundle: NSBundle(forClass: self.dynamicType))
        
        testedController = storyboard?.instantiateViewControllerWithIdentifier("testViewID") as? TestedViewController
        secondViewController = storyboard?.instantiateViewControllerWithIdentifier("SecondViewID") as? SecondViewController
        secondViewController?.desc = "Second"
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        // Test without handler
        testedController?.testedMethod("SomeSenderSecond")
        XCTAssertEqual(self.testedController!.result, "prepareForSegue")
        XCTAssertEqual(self.testedController!.sender as? String, "SomeSenderSecond")
        
        testedController?.firstTest()
        XCTAssertEqual(self.testedController!.result, "Handler for first segue")
        XCTAssertEqual(self.testedController!.sender as? String, "SomeSender1")
        
        testedController?.secondTest()
        XCTAssertEqual(self.testedController!.result, "Handler for second segue")
        XCTAssertEqual(self.testedController!.sender as? String, "SomeSender2")
//
//        self.testedController?.result = ""
//        
//        testedController?.testedMethod(nil)
//        XCTAssertNil(self.testedController!.sender)
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
//        self.measureBlock {
//            // Put the code you want to measure the time of here.
//        }
    }
    
}
