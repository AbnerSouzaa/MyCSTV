//
//  MatchesTableViewCell.swift
//  MyCSTV
//
//  Created by Abner Souza on 28/03/22.
//

import UIKit
import Kingfisher

class MatchesTableViewCell: UITableViewCell {

    weak var coordinator: MatchesCoordinator?
    var match: Matches?
    
    @IBOutlet weak var dataView: UIView!
    @IBOutlet weak var vsLabel: UILabel!
    @IBOutlet weak var labelTime2: UILabel!
    @IBOutlet weak var labelTime1: UILabel!
    @IBOutlet weak var imageTime1: UIImageView!
    @IBOutlet weak var imageTime2: UIImageView!
    @IBOutlet weak var leagueImage: UIImageView!
    @IBOutlet weak var league: UILabel!
    @IBOutlet weak var data: UILabel!
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupElements()
    }
    
    func setupElements(){
        
        self.vsLabel.font = .roboto(type: .regular, size: 10)
        self.league.font = .roboto(type: .regular, size: 10)
        self.labelTime1.font = .roboto(type: .regular, size: 10)
        self.labelTime2.font = .roboto(type: .regular, size: 10)
        self.data.font = .roboto(type: .bold, size: 10)
        
        self.dataView.layer.masksToBounds = true
        self.dataView.layer.cornerRadius = 14
        self.containerView.layer.cornerRadius = 14
        self.dataView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMinYCorner]
        
    }
    
    func setupMatches(matches: Matches){
        
        if matches.opponents.count == 2 {
            
            let opponents1 = matches.opponents[0].opponent
            let opponenst2 = matches.opponents[1].opponent
            
            if let imageUrl = opponents1.imageURL {
            self.imageTime1.kf.setImage(with:imageUrl)
            } else {
                self.imageTime1.image = UIImage(named: "imagenil")
            }
            if let imageUrl = opponenst2.imageURL {
                   self.imageTime2.kf.setImage(with:imageUrl)
            } else{
                self.imageTime2.image = UIImage(named: "imagenil")
            }

            if let imageUrl = matches.league?.imageUrl {
                self.leagueImage.kf.setImage(with: imageUrl)
            }  else {
                self.leagueImage.image = UIImage(named: "imagenil")
            }
            
        
            self.labelTime1.text = opponents1.name
            self.labelTime2.text = opponenst2.name
        }
        
        if matches.status == "running" {
            self.data.text = "Agora"
            self.dataView.layer.borderColor = AppColor.lightGrey.color.cgColor
        }
        
        self.league.text = matches.league?.name
        self.data.text = matches.date
    }
}
