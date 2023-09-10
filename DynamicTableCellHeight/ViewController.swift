//
//  ViewController.swift
//  DynamicTableCellHeight
//
//  Created by ios Tech Trainer on 09/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblTextContent: UITableView!
    
    var arrText = ["iOS Tech Trainer iOS Tech Trainer iOS Tech Trainer iOS Tech Trainer iOS Tech Trainer iOS Tech Trainer iOS Tech Trainer iOS Tech Trainer iOS Tech Trainer","iOS Tech Trainer","iOS Tech Trainer","iOS Tech Trainer","iOS Tech Trainer","iOS Tech Trainer","iOS Tech Trainer",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableviewCell()
        configureTableview()
    }

    func registerTableviewCell() {
        self.tblTextContent.register(UINib(nibName: "DynamicTableViewCell", bundle: nil), forCellReuseIdentifier: "DynamicTableViewCell")
    }
    
    func configureTableview() {
        self.tblTextContent.rowHeight = UITableView.automaticDimension
        self.tblTextContent.estimatedRowHeight = 50
        self.tblTextContent.dataSource = self
        self.tblTextContent.delegate = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let lblCell = tableView.dequeueReusableCell(withIdentifier: "DynamicTableViewCell", for: indexPath) as? DynamicTableViewCell else {
            return UITableViewCell()
        }
        lblCell.lblText.text = self.arrText[indexPath.row]
        return lblCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
