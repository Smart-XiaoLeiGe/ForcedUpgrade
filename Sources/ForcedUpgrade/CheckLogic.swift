//
//  File.swift
//
//
//  Created by Devin on 2023/4/17.
//

import Foundation
import SwiftyJSON

struct CheckLogic {
    // [forceUpgrade, version, title, description]
    public func checkUpgrade(response json: String) -> ShowModel {
        let jsonObj = JSON(parseJSON: json)
        if let ver = jsonObj["version"] && VersionTracker.currentVersion < ver {
            return ShowModel(showAlertView: true, forceUpgrade: (Bool)jsonObj["forceUpgrade"], title: jsonObj["title"], description: jsonObj["description"])
        }
        return ShowModel(showAlertView: false, forceUpgrade: true, title: "123", description: "456")
    }
}
