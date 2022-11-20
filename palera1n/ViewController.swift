//
//  ViewController.swift
//  palera1n
//
//  Created by Samuel Heinz on 20/11/2022.
//

import Cocoa

class ViewController: NSViewController {
    public var tweaks = NSButton()
    @IBOutlet weak var tweaksButton: NSButton!
    @IBOutlet weak var semitetheredButton: NSButton!
    @IBOutlet weak var dfuhelperButton: NSButton!
    @IBOutlet weak var skipfakefsButton: NSButton!
    @IBOutlet weak var noinstallButton: NSButton!
    @IBOutlet weak var nobasebandButton: NSButton!
    @IBOutlet weak var restorerootfsButton: NSButton!
    @IBOutlet weak var debugButton: NSButton!
    @IBOutlet weak var verboseButton: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func tweaksChecked(_ sender: NSButton) {
        tweaks = sender
        sender.isEnabled = false
        if (sender.state.rawValue == 1) {
            print(sender.title, "on")
        } else {
            print(sender.title, "off")
        }
    }
    @IBAction func semitetheredChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            print(sender.title, "on")
        } else {
            print(sender.title, "off")
        }
    }
    @IBAction func dfuhelperChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            print(sender.title, "on")
        } else {
            print(sender.title, "off")
        }
    }
    @IBAction func skipfakefsChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            print(sender.title, "on")
        } else {
            print(sender.title, "off")
        }
    }
    @IBAction func noinstallChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            print(sender.title, "on")
        } else {
            print(sender.title, "off")
        }
    }
    @IBAction func nobasebandChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            print(sender.title, "on")
        } else {
            print(sender.title, "off")
        }
    }
    @IBAction func restorerootfsChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            print(sender.title, "on")
        } else {
            print(sender.title, "off")
        }
    }
    @IBAction func debugChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            print(sender.title, "on")
        } else {
            print(sender.title, "off")
        }
    }
    @IBAction func verboseChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            print(sender.title, "on")
        } else {
            print(sender.title, "off")
        }
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
        
    }


}

