//
//  ViewController.swift
//  Gmail
//
//  Created by Porfirio on 26/07/23.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    var tableData: [Mail]?
    
    func readLocalJSONFile() {
        do {
            if let url = Bundle.main.url(forResource: "Dummy", withExtension: "json") {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(Welcome.self, from: data)
                
                tableData = jsonData.mails
            }
        } catch {
            print("error: \(error)")
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.dataSource = self
       tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
       tableView.delegate = self
       readLocalJSONFile()
       searchBar.delegate = self
    }
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let valor1 = tableData{
             return valor1.count
        }
        return 0
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? TableViewCell,
           let meil = tableData?[indexPath.row]{
                cell.setCellData(meil)
                return cell
        }
       return UITableViewCell()
    }
   
}
var filteredData: [Any]!
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
}


extension ViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    }
}
    
