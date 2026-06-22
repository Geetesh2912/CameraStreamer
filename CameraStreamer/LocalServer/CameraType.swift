//
//  CameraType.swift
//  CameraStreamer
//
//  Created by Geetesh Mandaogade on 22/06/26.
//

/**
 The type of camera device.
 */
enum CameraType {
    case live, prerecorded

    var displayName: String {
        switch self {
            case .live:
                return "Live"
            case .prerecorded:
                return "Pre-recorded"
        }
    }
}
