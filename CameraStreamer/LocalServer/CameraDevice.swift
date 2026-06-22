//
//  CameraList.swift
//  CameraStreamer
//
//  Created by Geetesh Mandaogade on 22/06/26.
//

import Foundation

/**
 This acts as a class holding all the details of a specific camera device.
 */
class CameraDevice: NSObject {

    let name: String
    let type: CameraType
    let deviceID: String

    init(name: String, type: CameraType, deviceID: String) {
        self.name = name
        self.type = type
        self.deviceID = deviceID
    }
}
