//
//  Video.swift
//  PeterPanVideo
//
//  Created by 翁淑惠 on 2020/12/11.
//

import Foundation

struct Video {
    var id: String
    var type: String
    var title: String
    var subtitle: String
    var image: String
    var url: String
}

enum videoType: String {
    case cartoon = "卡通動畫"
    case reality = "真人演出"
    case book = "書籍導讀"
}
