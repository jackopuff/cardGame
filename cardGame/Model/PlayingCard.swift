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
    private var rank : Int
    private var suit : String
    private var color: UIColor
    
    override init()
    {
        rank = 0
        suit = ""
        color = UIColor()
        super.init()
        
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
    ovverride func toString() ->String
    {
        let description = "The card rank is: \(rank) and its suitis \(suit). It has a color of \(color)"
        
        return description
    }
}
