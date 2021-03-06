//
//  SentenceProvider.swift
//  Daniele'sSentences
//
//  Created by Daniele De Nisi on 03/04/22.
//

import Foundation
import UIKit

public struct SentenceProvider {

  /// Creates a list of emoji details that includes an emoji along with its name and description.
  /// - Returns: The list of `SentenceDetails
    ///
  static func allSentences() -> [SentenceDetails] {
    return [
        SentenceDetails(
        emoji: "๐",
        name: "Daniele, where are you?",
        description: "Typical question my friends ask me during the morning or before going out.",
        color: UIColor.systemBlue),
        SentenceDetails(
        emoji: "๐คจ",
        name: "You have lost it, haven't you?",
        description: "Typical question my friends ask me for everything.",
        color: UIColor.systemCyan),
        SentenceDetails(
        emoji: "๐ค",
        name: "You're late!",
        description: "Anxious people be like.",
        color: UIColor.systemRed),
        SentenceDetails(
        emoji: "๐ธ",
        name: "Buongiorno Principessa!",
        description: "The way my team mates usually greet me when I'm in late.",
        color: UIColor.systemPink),
        SentenceDetails(
        emoji: "๐ค๐ผ",
        name: "What are you wearing?!",
        description: "Typical expression used for judging my outfit.",
        color: UIColor.systemMint),
        SentenceDetails(
        emoji: "๐",
        name: "You can't match the colors!",
        description: "Typical expression used for judging my outfit.",
        color: UIColor.systemTeal),
        SentenceDetails(
        emoji: "๐๐ผ",
        name: "You look like Jesus Christ...",
        description: "Just because I have long hair and a the beard.",
        color: UIColor.systemYellow),
        SentenceDetails(
        emoji: "๐๐ป",
        name: "When the hell you going to get a haircut?",
        description: "People don't like long hair.",
        color: UIColor.systemTeal),
        SentenceDetails(
        emoji: "๐ช",
        name: "Shave yourself, look like a tramp.",
        description: "People don't like beard.",
        color: UIColor.systemGreen),
        SentenceDetails(
        emoji: "๐คช",
        name: "Are you crazy?",
        description: "Sentence by people that think they're normal.",
        color: UIColor.systemCyan),
        SentenceDetails(
        emoji: "๐ฒ",
        name: "Another pizza fritta?",
        description: "My friend after watching me enjoing the third pizza fritta of the day.",
        color: UIColor.systemRed),
        SentenceDetails(
        emoji: "๐ค",
        name: "What do you do in NTA?",
        description: "Everyone for the thousandth time I explain what I studied in my university.",
        color: UIColor.systemTeal),
        SentenceDetails(
        emoji: "โ๏ธ",
        name: "Caffettino?",
        description: "People mocking me when I ask for a caffettino.",
        color: UIColor.systemMint),
        SentenceDetails(
        emoji: "๐ฆฅ",
        name: "You're danieling.",
        description: "A verb that means 'you are doing the Daniele', or in other words, you're wasting time in chatting, so also a simple action will take more than an hour because you're slowing down",
        color: UIColor.systemPink),
        SentenceDetails(
        emoji: "๐คท๐ป",
        name: "You're so skinny, but you ate so much.",
        description: "Typical expression used for judge my metabolism.",
        color: UIColor.systemBlue),
        SentenceDetails(
        emoji: "๐คฃ",
        name: "How funny you are!",
        description: "Typical expression used for judge my metabolism.",
        color: UIColor.systemOrange),
        SentenceDetails(
        emoji: "๐ฏ",
        name: "OMG, you look like Gianluca Fru!",
        description: "People that get closer to me for the first time.",
        color: UIColor.systemPurple),
        SentenceDetails(
        emoji: "๐ถ๐ป",
        name: "De Nisi se ne va.",
        description: "When Daniele is leaving, you'll hear something like this.",
        color: UIColor.systemIndigo)
        ]
  }
    
    
    /// Chooses a random `SenteceDetails` item from the list of all emoji and returns it.
    /// - Returns: A random `SentenceDetails` item.
    ///
    static func random() -> SentenceDetails {
      let allSentences = SentenceProvider.allSentences()
      let randomIndex = Int.random(in: 0..<allSentences.count)
      return allSentences[randomIndex]
    }
}
