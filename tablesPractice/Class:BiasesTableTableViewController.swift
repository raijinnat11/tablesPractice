//
//  Class:BiasesTableTableViewController.swift
//  tablesPractice
//
//  Created by Apple on 7/29/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

struct Biases {
    var id : Int
    var title : String
    var text : String
    var image : String
}

class Class_BiasesTableTableViewController: UITableViewController {
var allBiases = [
    Biases(id: 1,
           title: "Chungha",
        text: "Currently a solo artist, she was a former member of the project girl group I.O.I",
        image: "chungha"),
    Biases(id: 2,
           title: "Rosé",
           text: "She is the main vocalist of the girl group Blackpink, from YG Entertainment.",
           image: "rose"),
    Biases(id: 3,
           title: "Soyeon",
           text: "She is the main rapper and leader of the group (G)-Idle from Cube Entertainment. She composes many of the group's songs and writes their lyrics as well",
           image: "soyeon")
    ]
    

   

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allBiases.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

         cell.textLabel?.text = allBiases[indexPath.row].title

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Section \(section)"
        
    }
 

}
