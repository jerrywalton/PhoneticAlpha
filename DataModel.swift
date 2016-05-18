//
//  DataModel.swift
//  PhoneticAlpha
//
//  Created by Jerry Walton on 3/13/16.
//  Copyright © 2016 Symbolic Languages LLC. All rights reserved.
//

import Foundation

struct PhoneticInfo {
    var letter: Character
    var morseCode: String
    var telephony: String
    var phonetic: String
    
    init(letter: Character, morseCode: String, telephony : String, phonetic : String) {
        self.letter = letter
        self.morseCode = morseCode
        self.telephony = telephony
        self.phonetic = phonetic
    }
}

class DataModel {
    static let sharedInstance = DataModel()

    let phoneticInfos: [PhoneticInfo] = [
        PhoneticInfo(letter: "A", morseCode: "* -", telephony: "Alfa", phonetic: "(AL-FAH)"),
        PhoneticInfo(letter: "B", morseCode: "-***", telephony: "Bravo", phonetic: "(BRAH-VOH)"),
        PhoneticInfo(letter: "C", morseCode: "-*-*", telephony: "Charlie", phonetic: "(CHAR-LEE)"),
        PhoneticInfo(letter: "D", morseCode: "-**", telephony: "Delta", phonetic: "(DELL-TAH)"),
        PhoneticInfo(letter: "E", morseCode: "*", telephony: "Echo", phonetic: "(ECK-OH)"),
        PhoneticInfo(letter: "F", morseCode: "**-*", telephony: "Foxtrot", phonetic: "(FOKS-TROT)"),
        PhoneticInfo(letter: "G", morseCode: "--*", telephony: "Golf", phonetic: "(GOLF)"),
        PhoneticInfo(letter: "H", morseCode: "****", telephony: "Hotel", phonetic: "(HOH-TEL)"),
        PhoneticInfo(letter: "I", morseCode: "**", telephony: "India", phonetic: "(IN-DEE-AH)"),
        PhoneticInfo(letter: "J", morseCode: "*---", telephony: "Juliet", phonetic: "(JEW-LEE-ETT)"),
        PhoneticInfo(letter: "K", morseCode: "-*-", telephony: "Kilo", phonetic: "(KEY-LOH)"),
        PhoneticInfo(letter: "L", morseCode: "*-**", telephony: "Lima", phonetic: "(LEE-MAH)"),
        PhoneticInfo(letter: "M", morseCode: "--", telephony: "Mike", phonetic: "(MIKE)"),
        PhoneticInfo(letter: "N", morseCode: "-*", telephony: "November", phonetic: "(NO-VEM-BER)"),
        PhoneticInfo(letter: "O", morseCode: "---", telephony: "Oscar", phonetic: "(OSS-CAH)"),
        PhoneticInfo(letter: "P", morseCode: "*--*", telephony: "Papa", phonetic: "(PAH-PAH)"),
        PhoneticInfo(letter: "Q", morseCode: "--*-", telephony: "Quebec", phonetic: "(KEH-BECK)"),
        PhoneticInfo(letter: "R", morseCode: "*-*", telephony: "Romeo", phonetic: "(ROW-ME-OH)"),
        PhoneticInfo(letter: "S", morseCode: "***", telephony: "Sierra", phonetic: "(SEE-AIR-RAH)"),
        PhoneticInfo(letter: "T", morseCode: "-", telephony: "Tango", phonetic: "(TANG-GO)"),
        PhoneticInfo(letter: "U", morseCode: "**-", telephony: "Uniform", phonetic: "(YOU-NEE-FORM)"),
        PhoneticInfo(letter: "V", morseCode: "***-", telephony: "Victor", phonetic: "(VIK-TAH)"),
        PhoneticInfo(letter: "W", morseCode: "*--", telephony: "Whiskey", phonetic: "(WISS-KEY)"),
        PhoneticInfo(letter: "X", morseCode: "-**-", telephony: "Xray", phonetic: "(ECKS-RAY)"),
        PhoneticInfo(letter: "Y", morseCode: "-*--", telephony: "Yankee", phonetic: "(YANG-KEY)"),
        PhoneticInfo(letter: "Z", morseCode: "--**", telephony: "Zulu", phonetic: "(ZOO-LOO)")
    ]
        
}
