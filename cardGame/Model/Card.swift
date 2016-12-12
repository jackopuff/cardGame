//
//  Card.swift
//  cardGame
//
//  Created by Carter, Jackson on 10/25/16.
//  Copyright © 2016 Carter, Jackson. All rights reserved.
//

class Card
{
   
    internal var isFaceUp : Bool

    init()
    {
    
        isFaceUp = false
    }
    func isFacing() ->Bool
    {
        return isFaceUp
    }
    
    func setFacing(_ isFaceUp : Bool)
    {
        self.isFaceUp = isFaceUp
    }
    
    
    func toString() ->String
    {
        let description = "This card is \(isFaceUp)"
        
        return description
    }
}
