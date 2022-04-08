//
//  DetailsViewController.swift
//  MyCSTV
//
//  Created by Abner Souza on 06/04/22.
//

import UIKit

class DetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    @IBOutlet weak var vsLabel: UILabel!
    @IBOutlet weak var team2label: UILabel!
    @IBOutlet weak var team1Label: UILabel!
    @IBOutlet weak var imageTeam2: UIImageView!
    @IBOutlet weak var imageTeam1: UIImageView!
    @IBOutlet weak var leagueLabel: UILabel!
    
    @IBOutlet weak var backButton: UIButton!
    
    var teams = [Teams]()
    var detailFirstCell: Int = 0
    var detailSecondCell: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView(){
        self.tableView1.register(UINib(nibName: "DetailsFirstTeamTableViewCell", bundle: nil), forCellReuseIdentifier: "firstTeamCell")
        self.tableView1.delegate = self
        self.tableView2.dataSource = self
        let url = DetailsViewModel(baseUrL: "https://api.pandascore.co/csgo/matches")
        url.getTeams()
        
        self.tableView1.register(UINib(nibName: "DetailsSecondTableViewCell", bundle: nil), forCellReuseIdentifier: "firstTeamCell")
        self.tableView1.delegate = self
        self.tableView2.dataSource = self
        let secondUrl = DetailsViewModel(baseUrL: "https://api.pandascore.co/csgo/matches")
        secondUrl.getTeams()
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if teams.count == 2 {
            return 5
        }
            return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.tableView1, let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? DetailsFirstTeamTableViewCell {
            if teams[0].players.count >= self.detailFirstCell + 1 {
                cell.setupCell(team: teams[0], index: self.detailFirstCell)
                self.detailFirstCell += 1
            }

            return cell
            
        } else if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? DetailsSecondTeamTableViewCell {
            if teams[0].players.count >= self.detailFirstCell + 1 {
                cell.setupCell(team: teams[1], index: self.detailFirstCell)
                self.detailFirstCell += 1
            }

            return cell
        }
        return UITableViewCell()
    }

}
