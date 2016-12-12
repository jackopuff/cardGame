//
//  StupidGame.swift
//  cardGame
//
//  Created by Carter, Jackson on 11/11/16.
//  Contact me at jacksoncarter@damngooddeals.com
//  Copyright © 2016 Carter, Jackson. All rights reserved.
//

import Foundation
class StupidGame
{
    internal var GameDeck : PlayingCardDeck
    internal var hand : [PlayingCard]
    internal var score : Int
    internal var slotOne : [PlayingCard]
    internal var slotTwo : [PlayingCard]

    //constructor
    init()
    {
        GameDeck = PlayingCardDeck()
        hand = [PlayingCard]()
        self.score = 0
    }
    //
    func startGame()->Void
    {
        GameDeck.shuffleDeck()
        drawCards()
    }
    fileprivate func drawCards() -> Void
    {
        hand.append((GameDeck.drawCard() as? PlayingCard)!)
        hand.append((GameDeck.drawCard() as? PlayingCard)!)
        
    }
    
    // according to all known laws of aviation
    // there is no way a bee should be able to fly
    // but the bee doesn't care about what you humans think
    // and flies anyway
    
    func checkMatch() -> Bool
    {
    let hasMatch :Bool
    if(slotOne[0].rank == slotTwo[0].rank) || (slotOne[0].suit == slotTwo[0].suit)
    {
        hasMatch = true
    }
    else
    {
        hasMatch = false
    }
    return hasMatch
    }
    func playMatchGame() -> Void
    {
        if GameDeck.cards.count<0
        {
            if checkMatch()
            {
                score += 5
            }
            else
            {
                score = score-2
            }
           
        }
        hand.removeAll()
        drawCards()
    }

}
