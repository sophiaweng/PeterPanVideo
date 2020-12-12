//
//  VideoPlayViewController.swift
//  PeterPanVideo
//
//  Created by 翁淑惠 on 2020/12/11.
//

import UIKit
import WebKit

class VideoPlayViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var videoWebView: WKWebView!
    let video: Video

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.text = self.video.title
        subtitleLabel.text = self.video.subtitle
        //play video
        let urlReq = URLRequest(url: URL(string: self.video.url)!)
        videoWebView.load(urlReq)
    }
    
    init?(coder: NSCoder, video: Video) {
        self.video = video
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
