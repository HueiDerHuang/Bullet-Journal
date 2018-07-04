//
//  Journals.swift
//  Bullet Journal
//
//  Created by 黃暉德 on 2018/6/25.
//

import Foundation
import UIKit

struct Journal: Codable {
    var description: String
    var date: Date
    var bullet: String

    static func readJournalsFromFile() -> [Journal]? {
        let propertyDecoder = PropertyListDecoder()
        if let data = UserDefaults.standard.data(forKey: "journals"),
            let journals = try? propertyDecoder.decode([Journal].self, from: data) {
            return journals
        }
        else {
            return nil
        }
    }

    static func saveToFile(journals: [Journal]) {
        let propertyEncoder = PropertyListEncoder()
        if let data = try? propertyEncoder.encode(journals) {
            UserDefaults.standard.set(data, forKey: "journals")
        }
    }
}
