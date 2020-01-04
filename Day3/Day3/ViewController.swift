//
//  ViewController.swift
//  Day3
//
//  Created by iOSDevLog on 2020/1/5.
//  Copyright © 2020 iOSDevLog. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    let months = ["Janrary", "February", "March", "May"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: NSTableViewDataSource {
    func numberOfRows(in tableView: NSTableView) -> Int {
        months.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        return months[row]
    }
}
