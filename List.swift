//
//  List.swift
//  TryAgain
//
//  Created by Samantha Cortopassi on 12/28/18.
//  Copyright © 2018 Samantha Cortopassi. All rights reserved.
//

import UIKit

class List: NSObject {
    fileprivate var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
//        items[0] += ", hey there"
//        items[1] += ", bumped"
        
    }
}
extension List: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    var item = items[indexPath.row]
            item += ", Bazinga!"
        
        cell.textLabel!.text = item
        
        return cell
    }
}
