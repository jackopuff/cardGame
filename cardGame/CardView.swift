//
//  CardView.swift
//  cardGame
//
//  Created by Carter, Jackson on 11/21/16.
//  Copyright © 2016 Carter, Jackson. All rights reserved.
//

import UIKit
@IBDesignable class CardView
{
   internal var frontImage : UIImageView
   internal var backImage : UIImageView
    internal var bottomLabel : UILabel
  @IBInspectable  internal var isFaceUp : Bool
  @IBInspectable  internal var cornerCurve : CGFloat
    internal var topLabel : UILabel
    
    init()
    {
        frontImage = UIImageView()
        backImage = UIImageView()
        isFaceUp = Bool()
        bottomLabel = UILabel()
        topLabel = UILabel()
        super.init(frame: CGRect(x:0,y:0,width:400, height:800))
    }
    
    required init?(coder acoder : NSCoder){
        frontImage = UIImageView()
        backImage = UIImageView()
        isFaceUp = Bool()
        bottomLabel = UILabel()
        topLabel = UILabel()
        super.init(coder: acoder)
    }
}