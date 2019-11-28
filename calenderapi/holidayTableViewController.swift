//
//  newTableViewController.swift
//  facebookapi
//
//  Created by Akshay Devkate on 28/11/19.
//  Copyright © 2019 Akshay Devkate. All rights reserved.
//

import UIKit

class newTableViewController: UITableViewController{

    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self 
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    override func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)
        return cell
    }
}
    extension newTableViewController : UISearchBarDelegate{
        func searchbarButtonCLicked(_ searchBar: UISearchBar){
    
    }

    }
