//
//  ViewController.swift
//  CoreVehicle
//
//  Created by rasim rifat erken on 27.08.2022.
//

import UIKit
import CoreData

class ViewController: UIViewController ,  UITableViewDataSource , UITableViewDelegate , UISearchResultsUpdating  {
    
    let searchController = UISearchController(searchResultsController: nil)
    
    var viewModel = NYCViewModel()
    var moviesListViewModel = MoviesListViewModel()
    var values = [String:AnyObject]()
    
    var vehicleNames = [String]()
    var vehiclePictures = [String]()
    var filtered = [Vehicles]()
    var filteredData = [Vehicles]()

    let tableView: UITableView = {
        let table = UITableView()
        table.register( TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        return table
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        
        viewModel.getDataWith { dict in
            self.values = dict
        }
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
        tableView.rowHeight = 150
        
        
        setupSearchController()
        performUsingGroup()

    }
    
    func performUsingGroup() {

        
        let semaphore = DispatchSemaphore(value: 0)

        let q2 = DispatchQueue.global(qos: .background)
        let q3 = DispatchQueue.global(qos: .background)
    
        q2.async { () -> Void in
            sleep(1)
            if self.values.count != 0 {
                CoreDataQuestion.shared.saveDataOf(dictionary: self.values)
            }
            
            semaphore.signal()
        }
    
        q3.async { () -> Void in
            sleep(2)
            self.moviesListViewModel.a { [self] dict in
                filtered.append(dict)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            semaphore.signal()
        }
    }
        
        
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableView.frame = CGRect(x: 0, y: 100, width: self.view.frame.width, height: 800)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if isFiltering() {
            return self.filteredData.count
            
        }
        return filtered.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else {return UITableViewCell()}
        var name: String
        let url : String
        
        if isFiltering() {
            name = filteredData[indexPath.row].name ?? ""
            url = filteredData[indexPath.row].url ?? ""
        } else {
            name = filtered[indexPath.row].name ?? ""
            url = filtered[indexPath.row].url ?? ""
        }
        
        cell.setupCell(withVehicleData: name )
        cell.setupCellPhoto(withVehiclePhoto: url  )
        
        return cell
    }
    
    
    
    func setupSearchController(){
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Vehicles"
        searchController.searchBar.tintColor = UIColor.white
        tableView.tableHeaderView = searchController.searchBar
        
        definesPresentationContext = true
        
    }
    
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    func searchBarIsEmpty() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        filteredData = (filtered.filter({( schools : Vehicles) -> Bool in
            return (schools.name?.lowercased().contains(searchText.lowercased()))!
        }))
        
        tableView.reloadData()
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
    

    

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}





