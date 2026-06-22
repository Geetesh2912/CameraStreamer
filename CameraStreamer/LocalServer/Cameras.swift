//
//  CameraDevicesList.swift
//  CameraStreamer
//
//  Created by Geetesh Mandaogade on 22/06/26.
//

import Foundation

/**
 List of all camera devices for the user. This acts as a local server until we are strong enough to build a backend for this project :)
 */
class Cameras: NSObject {

    public func getList() -> [CameraDevice] {
        let cameraDevice1 = CameraDevice(
            name: "Hallway camera",
            type: .prerecorded,
            deviceID: "PRE-CAM-01")

        let cameraDevice2 = CameraDevice(
            name: "Kitchen camera",
            type: .prerecorded,
            deviceID: "PRE-CAM-01")

        return [cameraDevice1, cameraDevice2]
    }
}
