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
    internal var color: UIColor
    internal var rank : Int
    override init()
    {
        rank = 0
        suit = String()
        color = UIColor.red
        super.init()
        
    }
    init(withRank:Int, ofSuit:String)
    {
        color=UIColor.red
        rank = withRank
        suit = ofSuit
        super.init();
    }
    func getRank() ->Int
    {
        return rank
    }
    func getSuit() -> String
    {
        return suit
    }
    func getCardData() -> String
    {
        return "\(PlayingCard.validRanks()[rank]) \(suit)"
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
    //The class modifier it so the method is visible without an instance
    //You would call it by ClassName.method()
    //In this case PlayingCard.validRanks()
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K",]
    }
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    class func validSuits() ->[String]
    {
        return["","♤","♧","♦︎","♥︎"]
    }
}
