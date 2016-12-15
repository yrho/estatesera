



import UIKit

class EstatesTableViewController: UITableViewController {

    
    
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var myTableView: UITableView!
    @IBAction func btnSegmented(_ sender: AnyObject) {
        
    }
    
    let flatsforsale: [String] = ["Bukit Batok", "Teck Whye Lane"]
    let flatsforrent: [String] = ["Bukit Batok", "Teck Whye Lane"]
    
    var estates:[Estates] = [
        
        Estates(name: "Bukit Batok", type: "2 bedrooms", location: "Bukit Batok", image: "Bukit Batok.jpg", isVisited: false),
        
        Estates(name: "Teck Whye Lane", type: "1 bedroom", location: "Teck Whye Lane", image: "Teck Whye Lane.jpg", isVisited: false),
        
        Estates(name: "Clementi", type: "3 bedrooms", location: "Clementi", image: "Clementi.jpg", isVisited: false),
        
        Estates(name: "Ang Mo Kio", type: "4 bedrooms", location: "Ang Mo Kio", image: "Ang Mo Kio.jpg", isVisited: false),
        
        Estates(name: "Sengkang", type: "2 bedrooms", location: "Sengkang", image: "Sengkang.jpg", isVisited: false),
        
        Estates(name: "Toa Payoh", type: "3 bedrooms", location: "Toa Payoh", image: "Toa Payoh.jpg", isVisited: false),
        
        Estates(name: "Woodland", type: "1 bedroom", location: "Woodland", image: "Woodland.jpg", isVisited: false),
        
        Estates(name: "Pasir Ris", type: "2 bedrooms", location: "Pasir Ris", image: "Pasir Ris.jpg", isVisited: false),
        
        Estates(name: "MacPherson", type: "1 bedroom", location: "MacPherson", image: "MacPherson.jpg", isVisited: false),
        
        Estates(name: "Queenstown", type: "3 bedrooms", location: "Queenstown", image: "Queenstown.jpg", isVisited: false),
        
        Estates(name: "Redhill", type: "1 bedroom", location: "Redhill", image: "Redhill.jpg", isVisited: false),
        
        Estates(name: "Punggol", type: "3 bedrooms", location: "Punggol", image: "Punggol.jpg", isVisited: false),
        
        Estates(name: "Tampines", type: "1 bedroom", location: "Tampines", image: "Tampines.jpg", isVisited: false),
        
        Estates(name: "Simei", type: "3 bedrooms", location: "Simei", image: "Simei.jpg", isVisited: false),
        
        Estates(name: "Jurong", type: "2 bedroom", location: "Jurong", image: "Jurong.jpg", isVisited: false),
        
        Estates(name: "Yio Chu Kang", type: "3 bedrooms", location: "Yio Chu Kang", image: "Yio Chu Kang.jpg", isVisited: false),
        
        Estates(name: "Tiong Bahru", type: "1 bedroom", location: "Tiong Bahru", image: "Tiong Bahru.jpg", isVisited: false),
        
        Estates(name: "Yishun", type: "3 bedrooms", location: "Yishun", image: "Yishun.jpg", isVisited: false),
        ]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        func tableView(tableView: UITableView, numberofRowsInSection section: Int) -> Int {
            
            var returnvalue = 0
            switch (mySegmentedControl.selectedSegmentIndex) {
            case 0:
                returnvalue = Flatsforrent.count
                break
            case 1:
                returnvalue
            }
                return returnvalue = Flatsforsale.count
                break
            default:
                break
        }
        
            return returnValue
        
    }
    
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath as IndexPath)
        
            return myCell
        
        }
        
       
        @IBAction func refreshButtonTapped(sender: AnyObject) {
            
        }
        
        @IBAction func segmentedControlActionChanged(sender: AnyObject) {
            myTableView.reloadData()
            
        }
        
        
    // Remove the title of the back button
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        navigationController?.hidesBarsOnSwipe = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       var return estates.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! EstatesTableViewCell

        // Configure the cell...
        cell.nameLabel?.text = estates[indexPath.row].name
        cell.thumbnailImageView.image = UIImage(named: estates[indexPath.row].image)
        cell.locationLabel.text = estates[indexPath.row].location
        cell.typeLabel.text = estates[indexPath.row].type
        cell.accessoryType = estates[indexPath.row].isVisited ? .checkmark : .none
        
        return cell
    }
    
    override func tableView(_ tableViw: UITableView, commit editingStyle:
        UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // Delete the row from the data source
            estates.remove(at: indexPath.row)
        }
        
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath)
        -> [UITableViewRowAction]? {
            
    
    // Social Sharing Button
    let shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Share", handler: {(action, indexPath) -> Void in
    
    let defaultText = "Just checking in at " + self.estates[indexPath.row].name
        
        if let imageToShare = UIImage(named: self.estates[indexPath.row].image) {
            let activityController = UIActivityViewController(activityItems: [defaultText, imageToShare], applicationActivities: nil)
            self.present(activityController, animated: true, completion: nil)
        }
    })
    
    // Delete button
    let deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Delete", handler: {(action, IndexPath) -> Void in
        
        // Delete the row from the data source
        self.estates.remove(at: IndexPath.row)
        
        self.tableView.deleteRows(at: [IndexPath], with: .fade)
    })
    
    shareAction.backgroundColor = UIColor(red: 48.0/255.0, green: 173.0/255.0, blue: 99.0/255.0, alpha: 1.0)
    deleteAction.backgroundColor = UIColor(red: 202.0/255.0, green: 202.0/255.0, blue: 203.0/255.0, alpha: 1.0)
    
         return [deleteAction, shareAction]
}

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showEstatesDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as!
                    EstatesDetailViewController
                destinationController.estates = estates[indexPath.row]
            }
        }
    }
                
            }
        
