// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let videogame = try? newJSONDecoder().decode(Videogame.self, from: jsonData)

import Foundation

// MARK: - Videogame
struct Videogame: Codable {
    let id: Int
    let name: VideogameName
    let slug: VideogameSlug
}
