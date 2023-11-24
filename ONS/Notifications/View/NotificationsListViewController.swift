//
//  NotificationsListViewController.swift
//  ONS
//
//  Created by Amber Katyal on 22/11/23.
//

import UIKit

final class NotificationsListViewController: UITableViewController {
    
    let viewModel = NotificationsListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Notifications"
        tableView.register(UINib(nibName: "NotificationsListTableViewCell", bundle: nil), forCellReuseIdentifier: "NotificationsListTableViewCell")
    }
}

extension NotificationsListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationsListTableViewCell") as! NotificationsListTableViewCell
        cell.notificationLabel.text = viewModel.data[indexPath.row]
        
        return cell
    }
    
}

extension NotificationsListViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
}
