//

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
