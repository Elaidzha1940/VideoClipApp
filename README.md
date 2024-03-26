VideoClipApp.
==========

Build a video-based application with the AVKit framework and the Pexels API.
-----------
- Build Welcome UI / Splash Screen
- Code the different components and views
- Add dummy JSON data
- Convert JSON data into a custom SwiftUI model
- Call an API asynchronously
- AVPlayer (from AVKit) to integrate a media player

----------

https://github.com/Elaidzha1940/VideoClipApp/assets/64445918/636988bc-ce89-42c7-8b3f-cc8118912175

----------

ModelData
===============

````ruby

import SwiftUI

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
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
````
----

