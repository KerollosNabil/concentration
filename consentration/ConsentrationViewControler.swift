//
//  ViewController.swift
//  consentration
//
//  Created by kerollos nabil on 3/4/20.
//  Copyright © 2020 kerollos nabil. All rights reserved.
//

import UIKit

class ConsentrationViewControler: UIViewController {
    private(set) var didChaged = false
    var gameTheme = emojiTypes.allOfThem{
        didSet{
            if puttons != nil {
                didChaged = true
                game.changeCaracters(to: gameTheme)
                updateView(to: CGSize(width: 1, height: 1))
            }
            
        }
    }
    
   
    private lazy var game = Concentration(numberOfPairsOfCards: puttons.count / 2,emojiTybe: gameTheme)
    
    private(set) var flipCounter = 0{
        didSet{
            updateLable()
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        updateView(to: CGSize(width: size.width / self.view.bounds.width, height: size.height / self.view.bounds.height))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        updateView(to: CGSize(width: 1, height: 1))

    }
    @IBOutlet private var puttons: [UIButton]!
    @IBOutlet private weak var flipLabel: UILabel!{
        didSet{
            updateLable()
        }
    }
    
    @IBAction private func buttonClik(_ sender: UIButton) {
        flipCounter += 1
        if let cardNumber = puttons.firstIndex(of: sender){
            game.selectCard(at: cardNumber)
            updateView(to: CGSize(width: 1, height: 1))
        }
    }
    @IBAction private func startNewGame() {
        game = Concentration(numberOfPairsOfCards: puttons.count / 2,emojiTybe: gameTheme)
        updateLable()
        updateView(to: CGSize(width: 1, height: 1))
        flipCounter = 0
    }
    
    private func updateLable(){
        let attribures : [NSAttributedString.Key:Any] = [
            .strokeWidth : 3,
            .strokeColor : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        ]
        let attributedString = NSAttributedString(string: "Flips:\(flipCounter)", attributes: attribures)
        flipLabel.attributedText = attributedString
    }
    private func updateView(to size:CGSize) {
        if (puttons != nil) {
            for index in puttons.indices{
                let button = puttons[index]
                let card = game.cards[index]
                //print(puttons.last?.bounds)
                
                var fontSize = (button.bounds.width) * size.width * 0.9
                if fontSize > (button.bounds.height) * size.height * 0.9 {
                    fontSize = (button.bounds.height) * size.height * 0.9
                }
                let buttonsFont = UIFont.preferredFont(forTextStyle: .body).withSize(fontSize)
                button.titleLabel?.font = buttonsFont
                
                if card.isFliped{
                    button.setTitle(card.emoji, for: UIControl.State.normal)
                    button.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
                    
                }else{
                    button.setTitle("F", for: UIControl.State.normal)
                    button.backgroundColor = card.IsMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0) :  #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
                }
                if card.IsMatched {
                    button.setTitle(card.emoji, for: UIControl.State.normal)
                }
                 
            }
        }
    }
    
    

}

