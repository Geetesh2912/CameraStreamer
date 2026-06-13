//
//  ViewController.swift
//  CameraStreamer
//
//  Created by Geetesh Mandaogade on 13/06/26.
//

import AVFoundation
import AVKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_4x3/bipbop_4x3_variant.m3u8")!
        let player = AVPlayer(url: url)

        let playerVC = AVPlayerViewController()
        playerVC.player = player

        addChild(playerVC)
        playerVC.view.frame = view.bounds
        view.addSubview(playerVC.view)
        playerVC.didMove(toParent: self)

        player.play()
    }


}

