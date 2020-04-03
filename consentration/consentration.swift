//
//  consentration.swift
//  consentration
//
//  Created by kerollos nabil on 3/4/20.
//  Copyright © 2020 kerollos nabil. All rights reserved.
//

import Foundation

struct Concentration{
    private(set) var cards = [Card]()
    
    private(set) static var faces = "😀😁😂🤣😃😄😅😆😉😊😋😎😍😘🥰😗😙😚☺️🙂🤗🤩🤔🤨😐😑😶🙄😏😣😥😮🤐😯😪😫😴😌😛😜😝🤤😒😓😔😕🙃🤑😲☹️🙁😖😞😟😤😢😭😦😧😨😩🤯😬😰😱🥵🥶😳🤪😵😡😠🤬😷🤒🤕🤢🤮🤧😇🤠🤡🥳🥴🥺🤥🤫🤭🧐🤓😈👿👹👺💀👻👽🤖💩😺😸😹😻😼😽🙀😿😾"
    private(set) static var peopleAndFantasy = "👶👧🧒👦👩🧑👨👵🧓👴👲👳‍♀️👳‍♂️🧕🧔👱‍♂️👱‍♀️👨‍🦰👩‍🦰👨‍🦱👩‍🦱👨‍🦲👩‍🦲👨‍🦳👩‍🦳🦸‍♀️🦸‍♂️🦹‍♀️🦹‍♂️👮‍♀️👮‍♂️👷‍♀️👷‍♂️💂‍♀️💂‍♂️🕵️‍♀️🕵️‍♂️👩‍⚕️👨‍⚕️👩‍🌾👨‍🌾👩‍🍳👨‍🍳👩‍🎓👨‍🎓👩‍🎤👨‍🎤👩‍🏫👨‍🏫👩‍🏭👨‍🏭👩‍💻👨‍💻👩‍💼👨‍💼👩‍🔧👨‍🔧👩‍🔬👨‍🔬👩‍🎨👨‍🎨👩‍🚒👨‍🚒👩‍✈️👨‍✈️👩‍🚀👨‍🚀👩‍⚖️👨‍⚖️👰🤵👸🤴🤶🎅🧙‍♀️🧙‍♂️🧝‍♀️🧝‍♂️🧛‍♀️🧛‍♂️🧟‍♀️🧟‍♂️🧞‍♀️🧞‍♂️🧜‍♀️🧜‍♂️🧚‍♀️🧚‍♂️👼🤰🤱🙇‍♀️🙇‍♂️💁‍♀️💁‍♂️🙅‍♀️🙅‍♂️🙆‍♀️🙆‍♂️🙋‍♀️🙋‍♂️🤦‍♀️🤦‍♂️🤷‍♀️🤷‍♂️🙎‍♀️🙎‍♂️🙍‍♀️🙍‍♂️💇‍♀️💇‍♂️💆‍♀️💆‍♂️🧖‍♀️🧖‍♂️💅🤳💃🕺👯‍♀️👯‍♂️🕴🚶‍♀️🚶‍♂️🏃‍♀️🏃‍♂️👫👭👬💑👩‍❤️‍👩👨‍❤️‍👨💏👩‍❤️‍💋‍👩👨‍❤️‍💋‍👨👪👨‍👩‍👧👨‍👩‍👧‍👦👨‍👩‍👦‍👦👨‍👩‍👧‍👧👩‍👩‍👦👩‍👩‍👧👩‍👩‍👧‍👦👩‍👩‍👦‍👦👩‍👩‍👧‍👧👨‍👨‍👦👨‍👨‍👧👨‍👨‍👧‍👦👨‍👨‍👦‍👦👨‍👨‍👧‍👧👩‍👦👩‍👧👩‍👧‍👦👩‍👦‍👦👩‍👧‍👧👨‍👦👨‍👧👨‍👧‍👦👨‍👦‍👦👨‍👧‍👧"
    //feoseen
    private(set) static var animals : String = "🐶🐱🐭🐹🐰🦊🦝🐻🐼🦘🦡🐨🐯🦁🐮🐷🐽🐸🐵🙈🙉🙊🐒🐔🐧🐦🐤🐣🐥🦆🦢🦅🦉🦚🦜🦇🐺🐗🐴🦄🐝🐛🦋🐌🐚🐞🐜🦗🕷🕸🦂🦟🦠🐢🐍🦎🦖🦕🐙🦑🦐🦀🐡🐠🐟🐬🐳🐋🦈🐊🐅🐆🦓🦍🐘🦏🦛🐪🐫🦙🦒🐃🐂🐄🐎🐖🐏🐑🐐🦌🐕🐩🐈🐓🦃🕊🐇🐁🐀🐿🦔🐾🐉🐲"
    private(set) static var sporsts = "⚽️🏀🏈⚾️🥎🎾🏐🏉🥏🎱🪀🏓🏸🏒🥅🥊🎽🛹⛷🪂🏋️‍♀️🤸‍♀️⛹️‍♀️🤺🏌️‍♀️🏇🧘‍♀️🏄‍♀️"
    private(set) static var freshFood = "🍏🍎🍐🍊🍋🍌🍉🍇🍓🍈🍒🍑🥭🍍🥝🍅🍆🥑🥦🥬🥒🌶🌽🥕🧄🧅🥔🍠"
    private(set) static var cookedFood = "🥐🥯🍞🥖🥨🧀🥚🍳🧈🥞🧇🥓🥩🍗🍖🦴🌭🍔🍟🍕🥪🥙🧆🌮🌯🥗🍩🍪🌰"
    private(set) static var viecles = "🚗🚙🚕🚌🚎🏎🚓🚑🚒🚐🚚🚛🚜🛴🚲🛵🏍🛺🚔🚍🚘🚖🚡🚠🚟🚝🚄🚅✈️🛬💺"
    private(set) static var objects = "⌚️📱💻⌨️🖥🖨🖱🖲🕹🗜💽💾📼📸📷🎥☎️📟📠📺🎛⏰📡🔌💡🔦🪔🕯🧯🛢💸"
    private(set) static var flags = "🏳️🏴🏁🚩🏳️‍🌈🏴‍☠️🇦🇫🇦🇽🇦🇱🇩🇿🇦🇸🇦🇩🇦🇴🇦🇮🇦🇶🇦🇬🇦🇷🇦🇲🇦🇼🇦🇺🇦🇹🇦🇿🇧🇸🇧🇭🇧🇩🇧🇧🇧🇾🇧🇪🇧🇿🇧🇯🇧🇲🇧🇹🇧🇴🇧🇦🇧🇼🇧🇷🇮🇴🇻🇬🇧🇳🇧🇬🇧🇫🇧🇮🇰🇭🇨🇲🇨🇦🇮🇨🇨🇻🇧🇶🇰🇾🇨🇫🇹🇩🇨🇱🇨🇳🇨🇽🇨🇨🇨🇴🇰🇲🇨🇬🇨🇩🇨🇰🇨🇷🇨🇮🇭🇷🇨🇺🇨🇼🇨🇾🇨🇿🇩🇰🇩🇯🇩🇲🇩🇴🇪🇨🇪🇬🇸🇻🇬🇶🇪🇷🇪🇪🇪🇹🇪🇺🇫🇰🇫🇴🇫🇯🇫🇮🇫🇷🇬🇫🇵🇫🇹🇫🇬🇦🇬🇲🇬🇪🇩🇪🇬🇭🇬🇮🇬🇷🇬🇱🇬🇩🇬🇵🇬🇺🇬🇹🇬🇬🇬🇳🇬🇼🇬🇾🇭🇹🇭🇳🇭🇰🇭🇺🇮🇸🇮🇳🇮🇩🇮🇷🇮🇶🇮🇪🇮🇲🇮🇱🇮🇹🇯🇲🇯🇵🎌🇯🇪🇯🇴🇰🇿🇰🇪🇰🇮🇽🇰🇰🇼🇰🇬🇱🇦🇱🇻🇱🇧🇱🇸🇱🇷🇱🇾🇱🇮🇱🇹🇱🇺🇲🇴🇲🇰🇲🇬🇲🇼🇲🇾🇲🇻🇲🇱🇲🇹🇲🇭🇲🇶🇲🇷🇲🇺🇾🇹🇲🇽🇫🇲🇲🇩🇲🇨🇲🇳🇲🇪🇲🇸🇲🇦🇲🇿🇲🇲🇳🇦🇳🇷🇳🇵🇳🇱🇳🇨🇳🇿🇳🇮🇳🇪🇳🇬🇳🇺🇳🇫🇰🇵🇲🇵🇳🇴🇴🇲🇵🇰🇵🇼🇵🇸🇵🇦🇵🇬🇵🇾🇵🇪🇵🇭🇵🇳🇵🇱🇵🇹🇵🇷🇶🇦🇷🇪🇷🇴🇷🇺🇷🇼🇼🇸🇸🇲🇸🇦🇸🇳🇷🇸🇸🇨🇸🇱🇸🇬🇸🇽🇸🇰🇸🇮🇬🇸🇸🇧🇸🇴🇿🇦🇰🇷🇸🇸🇪🇸🇱🇰🇧🇱🇸🇭🇰🇳🇱🇨🇵🇲🇻🇨🇸🇩🇸🇷🇸🇿🇸🇪🇨🇭🇸🇾🇹🇼🇹🇯🇹🇿🇹🇭🇹🇱🇹🇬🇹🇰🇹🇴🇹🇹🇹🇳🇹🇷🇹🇲🇹🇨🇹🇻🇻🇮🇺🇬🇺🇦🇦🇪🇬🇧🏴󠁧󠁢󠁥󠁮󠁧󠁿🏴󠁧󠁢󠁳󠁣󠁴󠁿🏴󠁧󠁢󠁷󠁬󠁳󠁿🇺🇳🇺🇸🇺🇾🇺🇿🇻🇺🇻🇦🇻🇪🇻🇳🇼🇫🇪🇭🇾🇪🇿🇲🇿🇼"
    private(set) static var allOfThem = "🏳️🏴🏁🚩🏳️‍🌈🏴‍☠️🇦🇫🇦🇽🇦🇱🇩🇿🇦🇸🇦🇩🇦🇴🇦🇮🇦🇶🇦🇬🇦🇷🇦🇲🇦🇼🇦🇺🇦🇹🇦🇿🇧🇸🇧🇭🇧🇩🇧🇧🇧🇾🇧🇪🇧🇿🇧🇯🇧🇲🇧🇹🇧🇴🇧🇦🇧🇼🇧🇷🇮🇴🇻🇬🇧🇳🇧🇬🇧🇫🇧🇮🇰🇭🇨🇲🇨🇦🇮🇨🇨🇻🇧🇶🇰🇾🇨🇫🇹🇩🇨🇱🇨🇳🇨🇽🇨🇨🇨🇴🇰🇲🇨🇬🇨🇩🇨🇰🇨🇷🇨🇮🇭🇷🇨🇺🇨🇼🇨🇾🇨🇿🇩🇰🇩🇯🇩🇲🇩🇴🇪🇨🇪🇬🇸🇻🇬🇶🇪🇷🇪🇪🇪🇹🇪🇺🇫🇰🇫🇴🇫🇯🇫🇮🇫🇷🇬🇫🇵🇫🇹🇫🇬🇦🇬🇲🇬🇪🇩🇪🇬🇭🇬🇮🇬🇷🇬🇱🇬🇩🇬🇵🇬🇺🇬🇹🇬🇬🇬🇳🇬🇼🇬🇾🇭🇹🇭🇳🇭🇰🇭🇺🇮🇸🇮🇳🇮🇩🇮🇷🇮🇶🇮🇪🇮🇲🇮🇱🇮🇹🇯🇲🇯🇵🎌🇯🇪🇯🇴🇰🇿🇰🇪🇰🇮🇽🇰🇰🇼🇰🇬🇱🇦🇱🇻🇱🇧🇱🇸🇱🇷🇱🇾🇱🇮🇱🇹🇱🇺🇲🇴🇲🇰🇲🇬🇲🇼🇲🇾🇲🇻🇲🇱🇲🇹🇲🇭🇲🇶🇲🇷🇲🇺🇾🇹🇲🇽🇫🇲🇲🇩🇲🇨🇲🇳🇲🇪🇲🇸🇲🇦🇲🇿🇲🇲🇳🇦🇳🇷🇳🇵🇳🇱🇳🇨🇳🇿🇳🇮🇳🇪🇳🇬🇳🇺🇳🇫🇰🇵🇲🇵🇳🇴🇴🇲🇵🇰🇵🇼🇵🇸🇵🇦🇵🇬🇵🇾🇵🇪🇵🇭🇵🇳🇵🇱🇵🇹🇵🇷🇶🇦🇷🇪🇷🇴🇷🇺🇷🇼🇼🇸🇸🇲🇸🇦🇸🇳🇷🇸🇸🇨🇸🇱🇸🇬🇸🇽🇸🇰🇸🇮🇬🇸🇸🇧🇸🇴🇿🇦🇰🇷🇸🇸🇪🇸🇱🇰🇧🇱🇸🇭🇰🇳🇱🇨🇵🇲🇻🇨🇸🇩🇸🇷🇸🇿🇸🇪🇨🇭🇸🇾🇹🇼🇹🇯🇹🇿🇹🇭🇹🇱🇹🇬🇹🇰🇹🇴🇹🇹🇹🇳🇹🇷🇹🇲🇹🇨🇹🇻🇻🇮🇺🇬🇺🇦🇦🇪🇬🇧🏴󠁧󠁢󠁥󠁮󠁧󠁿🏴󠁧󠁢󠁳󠁣󠁴󠁿🏴󠁧󠁢󠁷󠁬󠁳󠁿🇺🇳🇺🇸🇺🇾🇺🇿🇻🇺🇻🇦🇻🇪🇻🇳🇼🇫🇪🇭🇾🇪🇿🇲🇿🇼⌚️📱💻⌨️🖥🖨🖱🖲🕹🗜💽💾📼📸📷🎥☎️📟📠📺🎛⏰📡🔌💡🔦🪔🕯🧯🛢💸🚗🚙🚕🚌🚎🏎🚓🚑🚒🚐🚚🚛🚜🛴🚲🛵🏍🛺🚔🚍🚘🚖🚡🚠🚟🚝🚄🚅✈️🛬💺🥐🥯🍞🥖🥨🧀🥚🍳🧈🥞🧇🥓🥩🍗🍖🦴🌭🍔🍟🍕🥪🥙🧆🌮🌯🥗🍩🍪🌰🍏🍎🍐🍊🍋🍌🍉🍇🍓🍈🍒🍑🥭🍍🥝🍅🍆🥑🥦🥬🥒🌶🌽🥕🧄🧅🥔🍠⚽️🏀🏈⚾️🥎🎾🏐🏉🥏🎱🪀🏓🏸🏒🥅🥊🎽🛹⛷🪂🏋️‍♀️🤸‍♀️⛹️‍♀️🤺🏌️‍♀️🏇🧘‍♀️🏄‍♀️🐶🐱🐭🐹🐰🦊🦝🐻🐼🦘🦡🐨🐯🦁🐮🐷🐽🐸🐵🙈🙉🙊🐒🐔🐧🐦🐤🐣🐥🦆🦢🦅🦉🦚🦜🦇🐺🐗🐴🦄🐝🐛🦋🐌🐚🐞🐜🦗🕷🕸🦂🦟🦠🐢🐍🦎🦖🦕🐙🦑🦐🦀🐡🐠🐟🐬🐳🐋🦈🐊🐅🐆🦓🦍🐘🦏🦛🐪🐫🦙🦒🐃🐂🐄🐎🐖🐏🐑🐐🦌🐕🐩🐈🐓🦃🕊🐇🐁🐀🐿🦔🐾🐉🐲👶👧🧒👦👩🧑👨👵🧓👴👲👳‍♀️👳‍♂️🧕🧔👱‍♂️👱‍♀️👨‍🦰👩‍🦰👨‍🦱👩‍🦱👨‍🦲👩‍🦲👨‍🦳👩‍🦳🦸‍♀️🦸‍♂️🦹‍♀️🦹‍♂️👮‍♀️👮‍♂️👷‍♀️👷‍♂️💂‍♀️💂‍♂️🕵️‍♀️🕵️‍♂️👩‍⚕️👨‍⚕️👩‍🌾👨‍🌾👩‍🍳👨‍🍳👩‍🎓👨‍🎓👩‍🎤👨‍🎤👩‍🏫👨‍🏫👩‍🏭👨‍🏭👩‍💻👨‍💻👩‍💼👨‍💼👩‍🔧👨‍🔧👩‍🔬👨‍🔬👩‍🎨👨‍🎨👩‍🚒👨‍🚒👩‍✈️👨‍✈️👩‍🚀👨‍🚀👩‍⚖️👨‍⚖️👰🤵👸🤴🤶🎅🧙‍♀️🧙‍♂️🧝‍♀️🧝‍♂️🧛‍♀️🧛‍♂️🧟‍♀️🧟‍♂️🧞‍♀️🧞‍♂️🧜‍♀️🧜‍♂️🧚‍♀️🧚‍♂️👼🤰🤱🙇‍♀️🙇‍♂️💁‍♀️💁‍♂️🙅‍♀️🙅‍♂️🙆‍♀️🙆‍♂️🙋‍♀️🙋‍♂️🤦‍♀️🤦‍♂️🤷‍♀️🤷‍♂️🙎‍♀️🙎‍♂️🙍‍♀️🙍‍♂️💇‍♀️💇‍♂️💆‍♀️💆‍♂️🧖‍♀️🧖‍♂️💅🤳💃🕺👯‍♀️👯‍♂️🕴🚶‍♀️🚶‍♂️🏃‍♀️🏃‍♂️👫👭👬💑👩‍❤️‍👩👨‍❤️‍👨💏👩‍❤️‍💋‍👩👨‍❤️‍💋‍👨👪👨‍👩‍👧👨‍👩‍👧‍👦👨‍👩‍👦‍👦👨‍👩‍👧‍👧👩‍👩‍👦👩‍👩‍👧👩‍👩‍👧‍👦👩‍👩‍👦‍👦👩‍👩‍👧‍👧👨‍👨‍👦👨‍👨‍👧👨‍👨‍👧‍👦👨‍👨‍👦‍👦👨‍👨‍👧‍👧👩‍👦👩‍👧👩‍👧‍👦👩‍👦‍👦👩‍👧‍👧👨‍👦👨‍👧👨‍👧‍👦👨‍👦‍👦👨‍👧‍👧😀😁😂🤣😃😄😅😆😉😊😋😎😍😘🥰😗😙😚☺️🙂🤗🤩🤔🤨😐😑😶🙄😏😣😥😮🤐😯😪😫😴😌😛😜😝🤤😒😓😔😕🙃🤑😲☹️🙁😖😞😟😤😢😭😦😧😨😩🤯😬😰😱🥵🥶😳🤪😵😡😠🤬😷🤒🤕🤢🤮🤧😇🤠🤡🥳🥴🥺🤥🤫🤭🧐🤓😈👿👹👺💀👻👽🤖💩😺😸😹😻😼😽🙀😿😾"
    
    
    
    
    private var theOneAndOnlyFaceUpCardIndex:Int?{
        get{
            return cards.indices.filter {cards[$0].isFliped}.oneAndOnly
            
        }
        set{
            for index in cards.indices{
                cards[index].isFliped = (newValue == index)
            }
        }
    }
    
    mutating func selectCard(at index:Int) {
        if !cards[index].IsMatched{
            if let selectedBrevusly = theOneAndOnlyFaceUpCardIndex{
                if cards[selectedBrevusly] == cards[index], theOneAndOnlyFaceUpCardIndex != index{
                    cards[selectedBrevusly].IsMatched = true
                    cards[index].IsMatched = true
                }
                cards[index].isFliped = !cards[index].isFliped
            }else{
                theOneAndOnlyFaceUpCardIndex=index
            }
        }
    }
    mutating func changeCaracters(to emojiTybe:emojiTypes){
        var emojies = emojiTybe.makeAnEmojiesString()
        emojies = String( emojies.shuffled())
        for indexx in cards.indices{
            let index = emojies.index(emojies.startIndex, offsetBy: cards[indexx].id)
            cards[indexx].changeEmoji(String(emojies[index]))
        }
    }
    init(numberOfPairsOfCards:Int, emojiTybe:emojiTypes) {
        //var unShuffledCards = [Card]()
        var emojies = emojiTybe.makeAnEmojiesString()
        emojies = String( emojies.shuffled())
        for _ in 1...numberOfPairsOfCards{
            let card = Card(emojiS: String(emojies.removeLast()))
            cards += [card, card]
        }
        cards.shuffle()

    }
    
}
enum emojiTypes:String {
    case faces
    case peopleAndFantasy
    case animals
    case sporsts
    case freshFood
    case cookedFood
    case viecles
    case objects
    case flags
    case allOfThem
    
    func makeAnEmojiesString() -> String{
        var emojies = ""
        
        switch self {
            case .faces: emojies=Concentration.faces
            case .cookedFood: emojies=Concentration.cookedFood
            case .flags: emojies=Concentration.flags
            case .animals: emojies=Concentration.animals
            case .freshFood: emojies=Concentration.freshFood
            case .objects: emojies=Concentration.objects
            case .peopleAndFantasy: emojies=Concentration.peopleAndFantasy
            case .sporsts: emojies=Concentration.sporsts
            case .viecles: emojies=Concentration.viecles
            case .allOfThem: emojies=Concentration.allOfThem
            
        }
        return emojies

    }
    
}
extension Array{
    mutating func shuffle()  {
        var newArr = self
        self.removeAll()
        for _ in 1...newArr.count{
            let index = newArr.count.arc4number
            self += [newArr[index]]
            newArr.remove(at: index)
        }
    }
    
}
extension Collection {
    var oneAndOnly:Element?  {
        return count == 1 ? first : nil
    }
}
