//
//  ViewController.swift
//  CarRental
//
//  Created by rasim rifat erken on 6.09.2022.
//

import UIKit



class ViewController: UIViewController ,  UITableViewDataSource , UITableViewDelegate , UISearchResultsUpdating   {
    
    
    let searchController = UISearchController(searchResultsController: nil)
    
    var viewModel = VehicleViewModel()
    var schoolList : [VehicleData]?
    var Filtered = [VehicleData]()
    var VehiclePhotoList : [Included]?
    

    let tableView: UITableView = {
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height ))
        table.register( TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        return table
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        
        UIApplication.shared.applicationIconBadgeNumber = 0
        
        tableView.dataSource = self
        tableView.delegate = self

        tableView.rowHeight = 150
        
        setupSearchController()
        
        viewModel.getALLData { [weak self] in
            self?.schoolList = self?.viewModel.vehicleName
            self?.VehiclePhotoList = self?.viewModel.vehiclePhoto
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
        

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if isFiltering() {
            return self.Filtered.count
        }
        return schoolList?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else {return UITableViewCell()}
        
        var nycHighSchoolList: VehicleData?
        
        if isFiltering() {
            nycHighSchoolList = Filtered[indexPath.row]
        } else {
            nycHighSchoolList = schoolList?[indexPath.row]
        }
        
        if let a = nycHighSchoolList {
            cell.setupCell(withVehicleData: a)
        }
        
        
        
        for i in 0...390 {
            if VehiclePhotoList?[i].id == schoolList?[indexPath.row].relationships.primary_image.data.id {
                if let b = VehiclePhotoList?[i] {
                    cell.setupCellPhoto(withVehiclePhoto: b)
                }
                
            }
        }
        
        return cell
    }
    
    func setupSearchController(){
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Vehicles"
        searchController.searchBar.tintColor = UIColor.white
        navigationItem.searchController = searchController
        
        definesPresentationContext = true
        
    }
    
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    func searchBarIsEmpty() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        Filtered = (schoolList!.filter({( schools : VehicleData) -> Bool in
            return schools.attributes.name.lowercased().contains(searchText.lowercased())
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





