//
//  ViewController.swift
//  Day3
//
//  Created by iOSDevLog on 2020/1/5.
//  Copyright © 2020 iOSDevLog. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var months = ["Janrary", "February", "March", "May"]

    @IBOutlet weak var tableView: NSTableView!
    @IBOutlet weak var textField: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func addMonth(_ sender: Any) {
        let month = textField.stringValue
        months.append(month)
        tableView.reloadData()
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

extension ViewController: NSTextFieldDelegate {
    func controlTextDidEndEditing(_ obj: Notification) {
        addMonth(self)
    }
}
