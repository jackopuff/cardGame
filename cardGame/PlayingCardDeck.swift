//
//  PlayingCardDeck.swift
//  cardGame
//
//  Created by Carter, Jackson on 10/31/16.
//  Copyright © 2016 Carter, Jackson. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
{
    
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
            {
                for rank in 1 ..< PlayingCard.maxRank()
                {
              //  let tempCard = PlayingCard()
              //  tempCard.rank = rank
              //  tempCard.suit = suit
                let tempCard = PlayingCard(withRank: rank, ofSuit: suit)
                cards.append(tempCard)
                }
            }
    }
    func orderDeck() -> Void
    {
        
    }
}
