//  TableViewController.swift
//  TableViewTest2.0
//
//  Created by Thomas Le Menestrel on 30/12/17.
//  Copyright © 2017 Passion for Creation. All rights reserved.
//

import UIKit

var artiste2 = ["Nina Parot - Léna Placktor - Gabrielle Levy","JIP","Victoire Genries - Laetitia Cordery","Marion Malard - Pénélope Laforge","Sarah Vamos - Victoire Guilbert","Definitely plastic","La quenelle et son bff","Clara & Celina", "Guillemette Guitard - Nicole Fife","Charlotte de Carbonnière - Abigaëlle Romeu"]
var artisteDesc2 = [
     "Mannequin : Gabrielle Levy Créatrice : Nina Parot, Léna Placktor"
    ,"Mannequin : Inès Anguera Créatrice : Jade Lejeune, Pauline Marotte"
    ,"Mannequin : Laetitia Cordery Créatrice : Victoire Genries"
    ,"Mannequin : Marion Malard Créatrice : Marion Malard, Pénélope Laforge"
    ,"Mannequin : Victoire Guilbert Créatrice : Sarah Vamos"
    ,"Mannequin : Gaetane van der bruggen et Hugo Ars Créatrice : Enrica Des Dorides et Juliette Vildé"
    ,"Mannequin : Augustin L'huillier Créatrice : Roxane Quenelle"
    ,"Mannequin : Celina de Lesseps Créatrice : Clara Guislain"
    ,"Mannequin : Nicole Fife Créatrice : Guillemette Guitard"
    ,"Mannequin : Charlotte de Carbonnière Créatrice : Abigaëlle Romeu"]
var myIndex2 = 0

class TableViewController2: UITableViewController {
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return artiste2.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        
        cell2.textLabel?.text = artiste2[indexPath.row]
        
        return cell2
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
      {
        myIndex2 = indexPath.row
        performSegue(withIdentifier: "segue6", sender: self)
      }
    
}
