//
//  YoutubeSearchResponse.swift
//  Netflix_Clone
//
//  Created by Puneet Bajaj on 10/25/23.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: VideoElementID
}

struct VideoElementID: Codable{
    let kind: String
    let videoId: String
}
