//  /*
//
//  Project: VideoClip
//  File: VideoModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.03.2024
//
//  */
 
import Foundation

// Global variable for a video dummy data
var previewVideo: Video = load("videoData.json")

// Function that loads JSON data into a T type and returns the decoded data
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase // Remember to add this line to avoid running into a crash
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

