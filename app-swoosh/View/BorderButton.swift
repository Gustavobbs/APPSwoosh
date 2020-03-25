//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Gustavo Buoro Branco de Souza on 24/03/20.
//  Copyright © 2020 Gustavo Buoro Branco de Souza. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override  func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.white.cgColor
    }

}
