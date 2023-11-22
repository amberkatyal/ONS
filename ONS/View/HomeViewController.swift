//
//  HomeViewController.swift
//  ONS
//
//  Created by Amber Katyal on 20/11/23.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
        setupAnimationBeginState()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        performAnimation()
    }


    // MARK: - Animations
    private func setupAnimationBeginState() {
        let views = [tableView]
        views.forEach {
            $0?.alpha = 0
            $0?.transform = CGAffineTransform(translationX: 0, y: 10)
        }
    }
    
    private func performAnimation() {
        guard tableView?.transform != .identity else { return }
        let viewsAnimator = UIViewPropertyAnimator(duration: 0.5, curve: .easeInOut) {
            self.tableView.alpha = 1
            self.tableView.transform = .identity
        }
        viewsAnimator.startAnimation(afterDelay: 0.5)
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = viewModel.options[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as! HomeTableViewCell
        cell.titleLabel.text = item.title
        cell.titleLabel.textAlignment = viewModel.layout == .leftAligned ? .left : .center
        return cell
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch viewModel.options[indexPath.row] {
        case .notifications:
            let vc = NotificationsListViewController()
            let nc = UINavigationController(rootViewController: vc)
            present(nc, animated: true)
        default: break
        }
    }
}
