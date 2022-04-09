//
//  DetailsFirstTableViewCell.swift
//  MyCSTV
//
//  Created by Abner Souza on 06/04/22.
//

import UIKit
import Kingfisher

class DetailsFirstTeamTableViewCell: UITableViewCell {

    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(index: Int, teams: Teams) {
        
        if let playerFirstName = teams.players[index].firstName, let playerLastName = teams.players[index].lastName {
            self.playerName.text = "\(playerFirstName) \(playerLastName)"
        }
            self.nickName.text = teams.players[index].nickname
            
        if let imageUrl = teams.players[index].imageUrl {
            self.playerImage.kf.setImage(with: imageUrl)
            }
        }
}
