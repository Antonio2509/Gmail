// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let mails: [Mail]
}

// MARK: - Mail
struct Mail: Codable {
    let emisor, correoEmisor, asunto, mensaje: String
    let hora: String
    let leido, destacado, spam: Bool
}
