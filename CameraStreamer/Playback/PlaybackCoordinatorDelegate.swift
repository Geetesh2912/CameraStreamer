//
//  PlaybackCoordinatorDelegate.swift
//  CameraStreamer
//
//  Created by Geetesh Mandaogade on 13/06/26.
//

protocol PlaybackCoordinatorDelegate: AnyObject {

    // Notifies the change in playback state
    func playbackCoordinator(_ coordinator: PlaybackCoordinator, didChangeState state: PlaybackState)

    // Notifies the change in the progress of playback
    func playbackCoordinator(_ coordinator: PlaybackCoordinator, didUpdateProgress progress: Double)
}
