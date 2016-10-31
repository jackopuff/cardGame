//
//  PlayingCard.swift
//  cardGame
//
//  Created by Carter, Jackson on 10/25/16.
//  Copyright © 2016 Carter, Jackson. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    internal var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    private var color: UIColor
    {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
    }
    override init()
    {
        super.init()
        rank = 0
        suit = ""
        color = UIColor()
        
    }
    func getRank() ->Int
    {
        return rank
    }
    func getSuit() -> String
    {
        return suit
    }
    func getColor() -> UIColor
    {
        return color
    }
    override func toString() ->String
    {
        var backStatus : String
        if super.isFacing()
        {
            backStatus = "is face up"
        }
        else
        {
            backStatus = "is face down"
        }
        
        let description = "The card rank is: \(rank) and its suitis \(suit). It has a color of \(color) the card is facing \(backStatus)"
        
        return description
    }
}
