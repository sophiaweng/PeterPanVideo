//
//  VideoTableViewController.swift
//  PeterPanVideo
//
//  Created by 翁淑惠 on 2020/12/11.
//

import UIKit

class VideoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return peterVideo.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return peterVideo[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath) as! VideoTableViewCell

        // Configure the cell...
        let peter = peterVideo[indexPath.section][indexPath.row]
        cell.titleLabel.text = peter.title
        cell.subtitleLabel.text = peter.subtitle
        cell.videoImageView?.image = UIImage(named: peter.image)
        cell.accessoryType = .disclosureIndicator

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let header: String
        switch section {
        case 0:
            header = videoType.cartoon.rawValue
        case 1:
            header = videoType.book.rawValue
        case 2:
            header = videoType.reality.rawValue
        default:
            header = ""
        }
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBSegueAction func playVideo(_ coder: NSCoder) -> VideoPlayViewController? {
        guard let section = tableView.indexPathForSelectedRow?.section else {
            return nil
        }
        guard let row = tableView.indexPathForSelectedRow?.row else {
            return nil
        }
        return VideoPlayViewController(coder: coder, video: peterVideo[section][row])
    }
    
    var peterVideo = [
        [
            Video(id: "V01", type: videoType.cartoon.rawValue, title: "彼得潘睡前故事",
              subtitle: "彼得潘|睡前故事|童話故事|4K UHD",
              image: "peter01.jpg", url: "https://www.youtube.com/watch?v=3-M9YeNS6Oc"),
            Video(id: "V02", type: videoType.cartoon.rawValue, title: "彼得潘-兒童卡通動畫",
                  subtitle: "觀看彼得潘配音和字幕的故事，為孩子們帶來歡樂！",
                  image: "peter02.jpg", url: "https://www.youtube.com/watch?v=zjD5Mrs_iOk"),
            Video(id: "V03", type: videoType.cartoon.rawValue, title: "華特迪士尼:彼得潘 part1",
                  subtitle: "華特迪士尼(Walt Disney): 彼得潘(Peter pan) part1",
                  image: "peter03.jpg", url: "https://www.youtube.com/watch?v=ZNTVNP7_IJA"),
            Video(id: "V04", type: videoType.cartoon.rawValue, title: "華特迪士尼:彼得潘 part2",
                  subtitle: "華特迪士尼(Walt Disney): 彼得潘(Peter pan) part2",
                  image: "peter04.jpg", url: "https://www.youtube.com/watch?v=HJ825mZ6iH4"),
            Video(id: "V05", type: videoType.cartoon.rawValue, title: "童話故事07小飛俠",
                  subtitle: "彼得潘是個永遠長不大的小孩，他和其他孩子們在神奇夢幻島上對抗虎克船長及海盜",
                  image: "peter05.jpg", url: "https://www.youtube.com/watch?v=y-O3t6agI94&t=23s")
        ],
        [
            Video(id: "V06", type: videoType.book.rawValue, title: "小飛俠(彼得潘-Peter Pan)",
                  subtitle: "迪士尼經典卡通-第7集-小飛俠(彼得潘-Peter Pan)",
                  image: "peter06.jpg", url: "https://www.youtube.com/watch?v=yQK9Fi2fH-0"),
            Video(id: "V07", type: videoType.book.rawValue, title: "小飛俠彼得潘童話書",
                  subtitle: "First Stories: Peter Pan 小飛俠彼得潘 童話硬頁推拉書",
                  image: "peter07.jpg", url: "https://www.youtube.com/watch?v=Eo7nvQfyh24")
        ],
        [
            Video(id: "V08", type: videoType.reality.rawValue, title: "小飛俠彼得潘音樂劇 1",
              subtitle: "小飛俠彼得潘音樂劇－中文字幕 1",
              image: "peter08.jpg", url: "https://www.youtube.com/watch?v=Vp4dH6JjqB4"),
            Video(id: "V09", type: videoType.reality.rawValue, title: "小飛俠彼得潘音樂劇 2",
                  subtitle: "小飛俠彼得潘音樂劇－中文字幕 2",
                  image: "peter09.jpg", url: "https://www.youtube.com/watch?v=3wgsnwHM4SA"),
            Video(id: "V010", type: videoType.reality.rawValue, title: "【彼得潘】中文電影預告",
                  subtitle: "【彼得潘】HD高畫質中文電影預告",
                  image: "peter10.jpg", url: "https://www.youtube.com/watch?v=vQfbBzJQShM")
        ]
    ]

}
