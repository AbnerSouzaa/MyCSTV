//
//  ViewController.swift
//  MyCSTV
//
//  Created by Abner Souza on 29/03/22.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    var matches = [Matches]()
    var oppo = [Opponents]()
    var coordinator: MatchesCoordinator?
    
    var viewModel: MatchesViewModel?
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView!
    
    init(coordinator: MatchesCoordinator){
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MatchesTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        let url = MatchesViewModel(baseUrL: "https://api.pandascore.co/csgo/matches")
        url.getMatches()
        tableView.dataSource = self
        tableView.delegate = self
        url.completionHandler{ [weak self] (matches, status, message) in
            if status {
                guard let self = self else {return}
                guard let _matches = matches else {return}
                self.matches = _matches

                self.tableView.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MatchesTableViewCell {

            let matches = matches[indexPath.row]
            
            cell.setupMatches(matches: matches)

            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let matches = matches[indexPath.row]
        self.coordinator?.openDetails(matches: matches) ?? print("DETAILS")
    }
}
