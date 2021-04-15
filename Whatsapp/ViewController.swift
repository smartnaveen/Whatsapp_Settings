//
//  ViewController.swift
//  Whatsapp
//
//  Created by Mr. Naveen Kumar on 15/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

 // MARK:- extension of tableview method
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 2
        case 3:
            return 4
        case 4:
            return 2
        case 5:
            return 1
        default:
            break
        }
     return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.section == 0 {
         cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath)
            return cell
        }else if indexPath.section == 5{
            cell = tableView.dequeueReusableCell(withIdentifier: "ThirdCell", for: indexPath)
            cell.contentView.backgroundColor = UIColor.systemGray6
            return cell

            }
        else {
        cell = tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath)
            return cell
        }

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 100
        case 5:
            return 60
        default:
            return 45
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 0
        default:
            return 40
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.systemGray6
        return view
    }
    
}
