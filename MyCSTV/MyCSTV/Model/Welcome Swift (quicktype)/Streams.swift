// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let streams = try? newJSONDecoder().decode(Streams.self, from: jsonData)

import Foundation

// MARK: - Streams
struct Streams: Codable {
    let english, official, russian: English
}
