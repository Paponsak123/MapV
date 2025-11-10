//
//  tbVC_Cell1.swift
//  CustomCellTable
//
//  Created by Warintira Pureprasert on 3/11/2568 BE.
//

import UIKit

class tbVC_Cell1: UITableViewCell {

    @IBOutlet weak var imgCell: UIImageView!
    
    @IBOutlet weak var lbCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
