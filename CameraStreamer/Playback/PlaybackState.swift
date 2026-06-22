//
//  PlaybackStates.swift
//  CameraStreamer
//
//  Created by Geetesh Mandaogade on 13/06/26.
//

enum PlaybackState {
    case playing, paused, loading, error(msg: String), idle
}
