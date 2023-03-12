//
//  ViewControllerTests.swift
//  test_fastlane_reportsTests
//
//  Created by Vasile Morari on 12.03.2023.
//

import UIKit
import XCTest
import SnapshotTesting

@testable import test_fastlane_reports

final class ViewControllerTests: XCTestCase {
	
	private var sut: ViewController!
	
	override func setUp() {
		super.setUp()
		
		sut = UIStoryboard(name: "Main", bundle: .main).instantiateInitialViewController()
		sut.loadViewIfNeeded()
	}
	
	func testInitialStateSnapshot() {
		assertSnapshot(matching: sut, as: .image)
	}
	
	func testCustomStateSnapshot() {
		// when
		sut.setText("TESTING")
		
		// then
		assertSnapshot(matching: sut, as: .image)
	}
}
