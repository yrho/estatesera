



import UIKit

class EstatesDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var estatesImageView: UIImageView!
    @IBOutlet var tableView:UITableView!
        
    var estates:Estates!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        estatesImageView.image = UIImage(named: estates.image)
        
         tableView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
         tableView.tableFooterView = UIView(frame: CGRect.zero)
         tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        
         title = estates.name
        
         navigationController?.hidesBarsOnSwipe = false
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - UITableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! EstatesDetailTableViewCell
    
        // Configure the cell ...
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = estates.name
            
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = estates.type
            
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = estates.location
            
        case 3:
            cell.fieldLabel.text = "Been here"
            cell.valueLabel.text = (estates.isVisited) ? "Yes, I've been here before" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
            
        }
        
        cell.backgroundColor = UIColor.clear
        
     return cell
    
        }
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
