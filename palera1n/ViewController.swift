//
//  ViewController.swift
//  palera1n
//
//  Created by Samuel Heinz on 20/11/2022.
//

import Cocoa

class ViewController: NSViewController {
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
        if (sender.state.rawValue == 1) {
            restorerootfsButton.isEnabled = false
            dfuhelperButton.isEnabled = false
            print(sender.title, "on")
        } else {
            checkValidity(buttons: restorerootfsButton)
            checkValidity(buttons: dfuhelperButton)
            print(sender.title, "off")
        }
    }
    @IBAction func semitetheredChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            restorerootfsButton.isEnabled = false
            dfuhelperButton.isEnabled = false
            print(sender.title, "on")
        } else {
            checkValidity(buttons: restorerootfsButton)
            checkValidity(buttons: dfuhelperButton)
            print(sender.title, "off")
        }
    }
    @IBAction func dfuhelperChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            restorerootfsButton.isEnabled = false
            print(sender.title, "on")
        } else {
            checkValidity(buttons: restorerootfsButton)
            print(sender.title, "off")
        }
    }
    @IBAction func skipfakefsChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            restorerootfsButton.isEnabled = false
            dfuhelperButton.isEnabled = false
            print(sender.title, "on")
        } else {
            checkValidity(buttons: restorerootfsButton)
            checkValidity(buttons: dfuhelperButton)
            print(sender.title, "off")
        }
    }
    @IBAction func noinstallChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            restorerootfsButton.isEnabled = false
            dfuhelperButton.isEnabled = false
            print(sender.title, "on")
        } else {
            checkValidity(buttons: restorerootfsButton)
            checkValidity(buttons: dfuhelperButton)
            print(sender.title, "off")
        }
    }
    @IBAction func nobasebandChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            print(sender.title, "on")
            dfuhelperButton.isEnabled = false
        } else {
            checkValidity(buttons: dfuhelperButton)
            print(sender.title, "off")
        }
    }
    @IBAction func restorerootfsChecked(_ sender: NSButton) {
        if (sender.state.rawValue == 1) {
            restorerootfsButton.isEnabled = false
            dfuhelperButton.isEnabled = false
            print(sender.title, "on")
        } else {
            checkValidity(buttons: restorerootfsButton)
            checkValidity(buttons: dfuhelperButton)
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
    func checkValidity(buttons: NSButton) -> Bool {
        if buttons == tweaksButton {
            if dfuhelperButton.state.rawValue == 0  && restorerootfsButton.state.rawValue == 0 {
                tweaksButton.isEnabled = true
            }
        }
        if buttons == semitetheredButton {
            if dfuhelperButton.state.rawValue == 0  && restorerootfsButton.state.rawValue == 0 {
                semitetheredButton.isEnabled = true
            }
        }
        if buttons == dfuhelperButton {
            if tweaksButton.state.rawValue == 0 && semitetheredButton.state.rawValue == 0 && skipfakefsButton.state.rawValue == 0 && noinstallButton.state.rawValue == 0 && nobasebandButton.state.rawValue == 0 && restorerootfsButton.state.rawValue == 0 {
                dfuhelperButton.isEnabled = true
            }
        }
        if buttons == skipfakefsButton {
            if dfuhelperButton.state.rawValue == 0  && restorerootfsButton.state.rawValue == 0 {
                skipfakefsButton.isEnabled = true
            }
        }
        if buttons == noinstallButton {
            if dfuhelperButton.state.rawValue == 0  && restorerootfsButton.state.rawValue == 0 {
                noinstallButton.isEnabled = true
            }
        }
        if buttons == nobasebandButton {
            if dfuhelperButton.state.rawValue == 0  && restorerootfsButton.state.rawValue == 0 {
                nobasebandButton.isEnabled = true
            }
        }
        if buttons == restorerootfsButton {
            if tweaksButton.state.rawValue == 0 && semitetheredButton.state.rawValue == 0 && skipfakefsButton.state.rawValue == 0 && noinstallButton.state.rawValue == 0 && nobasebandButton.state.rawValue == 0 && dfuhelperButton.state.rawValue == 0 {
                restorerootfsButton.isEnabled = true
            }
        }
        
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }

    }


}

