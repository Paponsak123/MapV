//
//  ViewController.swift
//  CustomCellTable
//
//  Created by Warintira Pureprasert on 3/11/2568 BE.
//

import UIKit
import WebKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    var urlPlace:String = ""
    var video:String = ""
    var row1:Int = 0
    
    
    @IBAction func btnVDO(_ sender: Any) {
        let path = Bundle.main.path(forResource: video, ofType: "mp4")!
        let videoURL = URL(fileURLWithPath: path)
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.present(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
    }
    
    
    @IBOutlet weak var webURL: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(urlPlace)
        print(video)
        print(row1)
        let myURL = URL(string: urlPlace)
        let myRequest = URLRequest(url: myURL!)
        webURL.load(myRequest)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination as! MapVC
        vc2.position = row1
    }
    
}
