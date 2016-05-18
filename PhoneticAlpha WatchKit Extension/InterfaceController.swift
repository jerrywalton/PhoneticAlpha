//
//  InterfaceController.swift
//  PhoneticAlpha WatchKit Extension
//
//  Created by Jerry Walton on 3/16/16.
//  Copyright © 2016 Symbolic Languages LLC. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var picker: WKInterfacePicker!
    @IBOutlet var letterLbl: WKInterfaceLabel!
    @IBOutlet var morseCodeLbl: WKInterfaceLabel!
    @IBOutlet var telephonyLbl: WKInterfaceLabel!
    @IBOutlet var phoneticLbl: WKInterfaceLabel!
    
    @IBAction func pickerChanged(value: NSInteger) {
        self.showItemAtIndex(value)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        var items: [WKPickerItem] = []
        for ndx in 1...DataModel.sharedInstance.phoneticInfos.count {
            let pi = DataModel.sharedInstance.phoneticInfos[ndx-1]
            let item = WKPickerItem()
            item.title = "\(pi.letter)"
            items.append(item)
        }
        self.picker.setItems(items)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        showRandom()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func showRandom() {
        let max = DataModel.sharedInstance.phoneticInfos.count
        let rand = Int(arc4random_uniform(UInt32(max)))
        self.picker.setSelectedItemIndex(rand)
        self.showItemAtIndex(rand)
    }
    
    func showItemAtIndex(ndx: NSInteger) {
        let pi = DataModel.sharedInstance.phoneticInfos[ndx]
        self.letterLbl.setText("\(pi.letter)")
        self.morseCodeLbl.setText(pi.morseCode)
        self.telephonyLbl.setText(pi.telephony)
        self.phoneticLbl.setText(pi.phonetic)
    }
    
}
