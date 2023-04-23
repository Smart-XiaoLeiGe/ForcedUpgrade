//
//  File.swift
//
//
//  Created by Devin on 2023/4/17.
//

import DeviceKit
import Foundation
import SwiftyJSON
import VersionTracker

struct CheckLogic {
    // [forceUpgrade, version, title, description]
    public func checkUpgrade(response json: String) -> ShowModel {
        let jsonObj = JSON(parseJSON: json)
//        let device = Device.current
        if let ver = jsonObj["version"].string {
            if VersionTracker.currentVersion < ver {
                return ShowModel(showAlertView: true, forceUpgrade: jsonObj["forceUpgrade"].bool ?? false, title: jsonObj["title"].string ?? "", description: jsonObj["description"].string ?? "")
            }
        }
        return ShowModel(showAlertView: false, forceUpgrade: true, title: "123", description: "456")
    }
}
