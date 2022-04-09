//
//  DetailsSecondTeamTableViewCell.swift
//  MyCSTV
//
//  Created by Abner Souza on 06/04/22.
//

import UIKit

class DetailsSecondTeamTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(team: Teams, index: Int) {
        if let playerFirstName = team.players[index].firstName, let playerLastName = team.players[index].lastName {
            self.playerName.text = "\(playerFirstName) \(playerLastName)"
        }
            self.nickName.text = team.players[index].nickname
            
        if let imageUrl = team.players[index].imageUrl {
                self.playerImage.kf.setImage(with: imageUrl)
            }
        }
    
}
