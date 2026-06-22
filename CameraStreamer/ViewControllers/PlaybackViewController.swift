//
//  PlaybackViewController.swift
//  CameraStreamer
//
//  Created by Geetesh Mandaogade on 22/06/26.
//

import AVFoundation
import AVKit
import UIKit

/**
 The main ViewController
 */
class PlaybackViewController: UIViewController, PlaybackCoordinatorDelegate {

    private let coordinator = PlaybackCoordinator()

    private var playerLayer: AVPlayerLayer?

    private lazy var progressLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "0%"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupPlaybackCoordinator()

        if let layer = coordinator.makeLayer() {
            layer.frame = view.bounds
            view.layer.addSublayer(layer)
            playerLayer = layer
        }

        view.addSubview(progressLabel)
        progressLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            progressLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            progressLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    // MARK: - Private Helpers

    private func setupView() {
        view.backgroundColor = .black
    }

    private func setupPlaybackCoordinator() {
        coordinator.delegate = self

        let url = URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_4x3/bipbop_4x3_variant.m3u8")!
        coordinator.loadAndPlayURL(url)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        playerLayer?.frame = view.bounds
    }

    // MARK: - PlaybackCoordinatorDelegate

    func playbackCoordinator(_ coordinator: PlaybackCoordinator, didChangeState state: PlaybackState) {
        switch state {
            case .loading: print("State: loading")
            case .playing: print("State: playing")
            case .paused: print("State: paused")
            case .error(let msg): print("State: error - \(msg)")
            case .idle: print("State: idle")
        }
    }

    func playbackCoordinator(_ coordinator: PlaybackCoordinator, didUpdateProgress progress: Double) {
        progressLabel.text = "\(Int(progress * 100))%"
    }

    deinit {
        print("✅ ViewController deallocated")
    }
}
