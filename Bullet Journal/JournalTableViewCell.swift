//
//  JournalTableViewCell.swift
//  Bullet Journal
//
//  Created by 黃暉德 on 2018/6/26.
//

import UIKit

class JournalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bulletLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
