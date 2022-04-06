//
//  SentenceDetails.swift
//  Daniele'sSentences
//
//  Created by Daniele De Nisi on 03/04/22.
//

import Foundation
import SwiftUI

public struct SentenceDetails {
  public var emoji: String
  public var name: String
  public var description: String
  public var shouldHideEmoji: Bool?
    

//  public let colorbg: String?
}

// MARK: - Identifiable // since we will display different emoji, the emoji string itself can be used as the id.
extension SentenceDetails: Identifiable {
  public var id: String {
    emoji
  }
}
