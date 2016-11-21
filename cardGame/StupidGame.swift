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
    internal var GameDeck: PlayingCardDeck
    internal lazy var MatchDeck = [Card]()
    {
        GameDeck = PlayingCardDeck()
        MatchDeck = [Card]()
    }
    
    func startGame()->Void
    {
    }
}
