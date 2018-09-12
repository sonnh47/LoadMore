

import UIKit

class MasterTableViewController: UITableViewController {
    
    var arrNumbers = ["Nguyen Hoang SOn"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrNumbers.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(arrNumbers[indexPath.row])
        if indexPath.row == arrNumbers.count - 1 {
            getMore()
        }
        return cell
    }
    
    func getMore() {
        let arrNewNames = ["Luyen", "Trom Cho"]
        arrNumbers += arrNewNames
        tableView.reloadData()
    }

}
