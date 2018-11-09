//
//  HeaderView.swift
//  Expandable_TableView
//
//  Created by MacBook Pro on 10/12/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

protocol HeaderDelegate {
    func calHeader(idx: Int)
}

class HeaderView: UIView {
    
    var secIndex: Int?
    var delegate: HeaderDelegate?

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(btn)
        btn.addSubview(btn2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    lazy var btn: UIButton = {
        //let image = UIImage(named: "Mosque") as UIImage?
        let btn = UIButton(frame: CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: self.frame.width, height: self.frame.height))
        btn.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue",
                                      size: 17.0)
    
        //btn.setImage(image, for: .normal)
        btn.alpha = 1
       
        //btn.layer.cornerRadius = 10
        //btn.clipsToBounds = true
        btn.layer.cornerRadius = 20
        btn.addTarget(self, action: #selector(onClickHeaderView), for: .touchUpInside)
        return btn
        
    }()
    lazy var btn2: UIButton = {
        let image = UIImage(named: "round_about-6") as UIImage?
        let btn2 = UIButton(frame: CGRect(x: self.frame.origin.x + 290, y: self.frame.origin.y , width: self.frame.width/6, height: self.frame.height/1.25))
        btn2.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 0)
        btn2.titleLabel?.textColor = UIColor.white
        //btn.setImage(image, for: .normal)
       
       
     
       
       
       // btn2.setImage(image, for: .normal)
        
        //btn.layer.cornerRadius = 10
        //btn.clipsToBounds = true
        btn2.layer.cornerRadius = 20
        btn2.addTarget(self, action: #selector(onClickHeaderView), for: .touchUpInside)
        return btn2
        
    }()
    
    @objc func onClickHeaderView() {
        if let idx = secIndex {
            delegate?.calHeader(idx: idx)
        }
    }

    
}
