//
//  ViewController.swift
//  iOSBootcamp-Dynamic
//
//  Created by Muhammad Hanif on 02/12/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var academyTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        academyTableView.dataSource = self
        academyTableView.register(
            UINib(nibName: "AcademyTableViewCell", bundle: nil),forCellReuseIdentifier: "AcademyCell")
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyAcademyData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: "AcademyCell",
            for: indexPath
        ) as? AcademyTableViewCell {
            let academy = dummyAcademyData[indexPath.row]
            cell.academyLabel.text = academy.name
            cell.academyImageView.image = academy.image
        return cell
        } else {
        return UITableViewCell()
        }
    }
}
