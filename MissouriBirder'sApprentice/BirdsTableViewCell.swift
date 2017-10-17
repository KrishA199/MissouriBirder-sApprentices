//
//  BirdsTableViewCell.swift
//  MissouriBirder'sApprentice
//
//  Created by Mucherla,Veera Kishon Kumar on 10/16/17.
//  Copyright © 2017 Mucherla,Veera Kishon Kumar. All rights reserved.
//

import UIKit

class BirdsTableViewCell: UITableViewCell {

    // called by dequeueReusableCell(withIdentifier)
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
