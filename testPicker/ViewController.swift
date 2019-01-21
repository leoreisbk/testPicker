//
//  ViewController.swift
//  testPicker
//
//  Created by Leonardo Reis on 21/01/19.
//  Copyright © 2019 Leonardo Reis. All rights reserved.
//

import UIKit
import ActionSheetPicker_3_0

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}


}


extension ViewController {
	@IBAction func actionSheet(sender: UIButton) {
		ActionSheetMultipleStringPicker.show(withTitle: "Multiple String Picker", rows: [
			["One", "Two", "A lot"],
			["Many", "Many more", "Infinite"]
			], initialSelection: [2, 2], doneBlock: {
				picker, indexes, values in
				
				print("values = \(values)")
				print("indexes = \(indexes)")
				print("picker = \(picker)")
				return
		}, cancel: { ActionMultipleStringCancelBlock in return }, origin: sender)
	}
}
