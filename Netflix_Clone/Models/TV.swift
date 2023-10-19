//
//  TV.swift
//  Netflix_Clone
//
//  Created by Puneet Bajaj on 10/18/23.
//

import Foundation

struct TrendingTvsResponse: Codable {
    let results : [TV]
    
}

struct TV : Codable{
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
