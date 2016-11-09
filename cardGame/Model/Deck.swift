//
//  Deck.swift
//  cardGame
//
//  Created by Carter, Jackson on 10/31/16.
//  Copyright © 2016 Carter, Jackson. All rights reserved.
//

import Foundation

class Deck
{
    internal lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        // created temp variable to hold Cards
        var tempDeck = [Card]()
        
        //Repeat until cards data member is empty.
        while self.cards.count > 0
        {
            //Get a randonumber between 0...cards.count-1
            let randomIndex = Int (arc4random() % (UInt32)(cards.count))
            
            //Remove the card at that index from the deck.
            let removedCard = cards.removeAtIndex(randomIndex)
            
            //Place that card in a temporary array
            tempDeck.append(removedCard)
        }
        
        //Replace the data member with the new deck
        self.cards = tempDeck
    }
    
    func cutDeck() -> Void
    {
        
    }
}