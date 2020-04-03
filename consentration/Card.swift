//
//  Card.swift
//  consentration
//
//  Created by kerollos nabil on 3/4/20.
//  Copyright © 2020 kerollos nabil. All rights reserved.
//

import Foundation
struct Card :Equatable {
    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }
    
    var isFliped = false
    var IsMatched = false
    private(set) var id : Int
    private(set) var emoji : String
    
    
    
    
    //private static var animalRange: [Int] = Array()
    private static var cardIdGenerator = -1
    
    
    
    init(emojiS:String) {
        Card.cardIdGenerator += 1
        self.id = Card.cardIdGenerator
        /*let randIndex = Card.range.count.arc4number
        let ascii = Card.range[randIndex]
        Card.range.remove(at: randIndex)
        //print(UnicodeScalar(ascii) ?? "k")
        emoji = String(describing: UnicodeScalar(ascii) ?? "k")*/
        emoji = emojiS
    }
    mutating func changeEmoji(_ emojiS:String) {
        emoji = emojiS
    }
    

}
extension Int{
    var arc4number: Int {
        if self > 0{
            return Int(arc4random_uniform(UInt32(self)))
        }else if self < 0{
            return -Int(arc4random_uniform(UInt32(abs(self))))
        }else {
            return 0
        }
        
    }
    
}
