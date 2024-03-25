//  /*
//
//  Project: VideoClip
//  File: VideoManager.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.03.2024
//
//  */

import Foundation

enum Query: String, CaseIterable {
    case people, nature, animals, food, ocean
}

struct ResponseBody: Decodable {
    var page: Int
    var perPage: Int
    var totalResults: Int
    var url: String
    var videos: [Video]
}

struct Video: Identifiable, Decodable {
    var id: Int
    var image: String
    var duration: Int
    var user: User
    var videoFile: [VideoFile]
   
    struct User: Identifiable, Decodable {
        var id: Int
        var name: String
        var url: String
    }
    
    struct VideoFile: Identifiable, Decodable {
        var id: Int
        var quality: String
        var fileType: String
        var link: String
    }
}
