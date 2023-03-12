//
//  ViewController.swift
//  test_fastlane_reports
//
//  Created by Vasile Morari on 12.03.2023.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet private weak var textLabel: UILabel!
	
	func setText(_ text: String?) {
		textLabel.text = text
	}
}

