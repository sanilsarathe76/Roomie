//
//  ProfileViewController.swift
//  CustomTabBar
//
//  Created by macmini45 on 25/07/23.
//

import UIKit

class ProfileViewController: UIViewController {

    static let identifier = "ProfileViewController"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerXIB()
    }
}

extension ProfileViewController {
    func registerXIB() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: ExploreHeaderView.identifier)
    }
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: ExploreHeaderView.identifier) as! ExploreHeaderView
        headerView.configure()
        return headerView
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
}
