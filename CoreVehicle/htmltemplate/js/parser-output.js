var entities = [{
  "id": 1,
  "typeString": "class",
  "properties": [
    {
  "name": "var runsForEachTargetApplicationUIConfiguration: Bool",
  "type": "type",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "setUpWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testLaunch() throws",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CoreVehicleUITestsLaunchTests",
  "superClass": 17
},{
  "id": 2,
  "typeString": "class",
  "methods": [
    {
  "name": "setUpWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tearDownWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testExample() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testLaunchPerformance() throws",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CoreVehicleUITests",
  "superClass": 17
},{
  "id": 3,
  "typeString": "class",
  "properties": [
    {
  "name": "let instance",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let url",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Constants"
},{
  "id": 4,
  "typeString": "class",
  "properties": [
    {
  "name": "var fetchedhResultController: NSFetchedResultsController<NSFetchRequestResult>",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let fetchRequest",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let frc",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let searchController",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var viewModel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var vehicleNames",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var vehiclePictures",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var filtered : [String]?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let tableView: UITableView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let table",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewDidLayoutSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupSearchController()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "isFiltering() -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "searchBarIsEmpty() -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "filterContentForSearchText(_ searchText: String, scope: String = )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "updateSearchResults(for searchController: UISearchController)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "saveInCoreDataWith(array: [[String: AnyObject]])",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "clearData()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "createPhotoEntityFrom(dictionary: [String: AnyObject]) -> NSManagedObject?",
  "type": "instance",
  "accessLevel": "private"
}
  ],
  "protocols": [
    19,
    20,
    21
  ],
  "name": "ViewController",
  "superClass": 18,
  "extensions": [
    6
  ]
},{
  "id": 7,
  "typeString": "struct",
  "properties": [
    {
  "name": "var name : String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var imageUrl : String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var id : String?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CarModel"
},{
  "id": 8,
  "typeString": "struct",
  "properties": [
    {
  "name": "var id : String?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var url : String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "UrlModel"
},{
  "id": 9,
  "typeString": "class",
  "properties": [
    {
  "name": "let identifier",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let myLabel : UILabel",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let label",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let myImage : UIImageView",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let image",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "awakeFromNib()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setSelected(_ selected: Bool, animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "layoutSubviews()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupCell(withVehicleData data : String )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setupCellPhoto(withVehiclePhoto data : String )",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init?(coder: NSCoder)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "TableViewCell",
  "superClass": 22
},{
  "id": 10,
  "typeString": "class",
  "properties": [
    {
  "name": "let instance",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "let included",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "getDataWith(completion: @escaping (_ dict : Dictionary<String , Any>) -> Void)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "parseJson (dict : Dictionary<String,Any>, completion : @escaping (_ carModels : [CarModel]) -> ())",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "NYCViewModel"
},{
  "id": 11,
  "typeString": "enum",
  "cases": [
    {
  "name": "Success"
},
    {
  "name": "Error"
}
  ],
  "name": "Result"
},{
  "id": 12,
  "typeString": "class",
  "properties": [
    {
  "name": "let sharedInstance",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "var persistentContainer: NSPersistentContainer",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let container",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let error",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "saveContext ()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init()",
  "type": "instance",
  "accessLevel": "private"
}
  ],
  "name": "CoreDataStack",
  "superClass": 23,
  "extensions": [
    13
  ]
},{
  "id": 14,
  "typeString": "class",
  "properties": [
    {
  "name": "var window: UIWindow?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "applicationWillResignActive(_ application: UIApplication)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "applicationDidEnterBackground(_ application: UIApplication)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "applicationWillEnterForeground(_ application: UIApplication)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "applicationDidBecomeActive(_ application: UIApplication)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "applicationWillTerminate(_ application: UIApplication)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    25
  ],
  "name": "AppDelegate",
  "superClass": 24
},{
  "id": 15,
  "typeString": "class",
  "properties": [
    {
  "name": "var window: UIWindow?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sceneDidDisconnect(_ scene: UIScene)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sceneDidBecomeActive(_ scene: UIScene)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sceneWillResignActive(_ scene: UIScene)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sceneWillEnterForeground(_ scene: UIScene)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "sceneDidEnterBackground(_ scene: UIScene)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "SceneDelegate",
  "superClass": 24
},{
  "id": 16,
  "typeString": "class",
  "methods": [
    {
  "name": "setUpWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tearDownWithError() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testExample() throws",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testPerformanceExample() throws",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "CoreVehicleTests",
  "superClass": 17
},{
  "id": 17,
  "typeString": "class",
  "name": "XCTestCase"
},{
  "id": 18,
  "typeString": "class",
  "name": "UIViewController"
},{
  "id": 19,
  "typeString": "protocol",
  "name": "UITableViewDataSource"
},{
  "id": 20,
  "typeString": "protocol",
  "name": "UITableViewDelegate"
},{
  "id": 21,
  "typeString": "protocol",
  "name": "UISearchResultsUpdating"
},{
  "id": 22,
  "typeString": "class",
  "name": "UITableViewCell"
},{
  "id": 23,
  "typeString": "class",
  "name": "NSObject"
},{
  "id": 24,
  "typeString": "class",
  "name": "UIResponder"
},{
  "id": 25,
  "typeString": "protocol",
  "name": "UIApplicationDelegate"
},{
  "id": 26,
  "typeString": "class",
  "name": "UIImage",
  "extensions": [
    5
  ]
},{
  "id": 27,
  "typeString": "protocol",
  "name": "NSFetchedResultsControllerDelegate"
},{
  "id": 5,
  "typeString": "extension",
  "methods": [
    {
  "name": "init?(url: URL?)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "UIImage"
},{
  "id": 6,
  "typeString": "extension",
  "methods": [
    {
  "name": "controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    27
  ],
  "extendedEntityName": "ViewController"
},{
  "id": 13,
  "typeString": "extension",
  "methods": [
    {
  "name": "applicationDocumentsDirectory()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "extendedEntityName": "CoreDataStack"
}] 