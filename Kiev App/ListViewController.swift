//
//  ListViewController.swift
//  Kiev App
//
//  Created by Ian Manor on 20/01/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let delegate = PlaceTableViewDelegate()
    let dataSource = PlaceTableViewDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }

}
