//
//  Card.swift
//  cardGame
//
//  Created by Carter, Jackson on 10/25/16.
//  Copyright © 2016 Carter, Jackson. All rights reserved.
//

import UIKit

class Card
{
    internal var backImage : UIImage
    internal var isFaceUp : Bool

    init()
    {
        backImage = UIImage(named: "cardback")!
        isFaceUp = false
    }
    func getBackImage() ->UIImage
    {
        return backImage
    }
    func isFacing() ->Bool
    {
        return isFaceUp
    }
    
    func setFacing(isFaceUp : Bool)
    {
        self.isFaceUp = isFaceUp
    }
    
    func setBackImage(backImage : UIImage)
    {
        self.backImage = backImage
    }
    
    func toString() ->String
    {
        let description = "This card is \(isFaceUp) and \(self.getBackImage()) is the image."
        
        return description
    }
}