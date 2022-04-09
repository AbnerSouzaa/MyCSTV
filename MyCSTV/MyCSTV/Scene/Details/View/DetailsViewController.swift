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
    
    var coordinator: MatchesCoordinator?
    var teams = [Teams]()
    
    init(coordinator: MatchesCoordinator){
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        
        self.tableView1.register(UINib(nibName: "DetailsSecondTableViewCell", bundle: nil), forCellReuseIdentifier: "SencondTeamCell")
        self.tableView1.delegate = self
        self.tableView2.dataSource = self
    }

    @IBAction func goBack(_ sender: Any) {
        self.coordinator?.goBack()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    var detailFirstCell: Int = 0
    var detailSecondCell: Int = 0
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? DetailsFirstTeamTableViewCell {

            let teams = teams[indexPath.row]

            return cell
        }
        return UITableViewCell()
    }
}
