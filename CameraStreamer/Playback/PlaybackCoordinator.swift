//
//  PlaybackCoordinator.swift
//  CameraStreamer
//
//  Created by Geetesh Mandaogade on 13/06/26.
//

import UIKit
import AVFoundation

class PlaybackCoordinator: NSObject {

    weak var delegate: PlaybackCoordinatorDelegate?

    private var player: AVPlayer?

    func loadAndPlayURL(_ URL: URL) {
        let playerItem = AVPlayerItem(url: URL)
        player = AVPlayer(playerItem: playerItem)
        player?.play()
    }

    func makeLayer() -> AVPlayerLayer? {
        guard let player else { return nil }
        let layer = AVPlayerLayer(player: player)
        layer.videoGravity = .resizeAspect
        return layer
    }
}
