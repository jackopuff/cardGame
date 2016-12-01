//
//  StupidGame.swift
//  cardGame
//
//  Created by Carter, Jackson on 11/11/16.
//  Copyright © 2016 Carter, Jackson. All rights reserved.
//

import Foundation
class StupidGame
{
    internal var GameDeck : PlayingCardDeck
    internal var hand : [PlayingCard]
    internal var score : Int

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
    private func drawCards() -> Void
    {
        hand.append((GameDeck.drawCard() as? PlayingCard)!)
        hand.append((GameDeck.drawCard() as? PlayingCard)!)
        
    }
    func checkMatch() -> Bool
    {
    let hasMatch :Bool
    if(hand[0].rank == hand[1].rank) || (hand[0].suit == hand[1].suit)
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
