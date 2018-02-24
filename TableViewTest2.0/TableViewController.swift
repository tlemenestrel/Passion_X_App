//
//  TableViewController.swift
//  TableViewTest2.0
//
//  Created by Thomas Le Menestrel on 30/12/17.
//  Copyright © 2017 Passion for Creation. All rights reserved.
//

import UIKit

var artiste = ["P-Gang","Asphaz x Wazø","SLM","Sunshine","Ïaam","Les Poussins Féroces","Magic margz","Comme les cinq doigts de la main","Soulband", "What'd you say?","JE","Les Jewsbrother","Little Joanne","We match","Isabel Porras","Clara Neuburger et Tanguy Marbot","Clara, Lou’ et Isabel","Sarah Drubay","Lou'","SeeMG Studio"]
var artisteDesc = [
    "On nappeux de surprises avec le P-Gang. Chefs de la trap wallone, charros dithyrambiques, pour Passion la relève du rap francophone a décidé de vous faire Valdinguer."
    ,"Ils se sont dit : on Nakama ltraiter le game. Pour percer ils ont embauché la virilité. Alors ils sont velus. Ils ont vu. Ils ont vaincu."
    ,"Eux, c’est nos chouchous. On les adore. Leur performance est prévue pour le meilleur moment de la soirée. Exprès. C’est cadeau. C’est pour nous. On leur a même gardé des tickets boissons. Quand on aime on ne compte pas."
    ,"Une valeur sûre. Des Passionés vétérans. Cette année le jazz les a provoqués. Ils lui ont répondu. Et l’addition sera salée."
    ,"Si vous ne la connaissez pas, elle ne vous restera pas étrangère très longtemps: Le spectre bariolé de ses image vous rendra marteau."
    ,"Ils sont énervés. L’éclosion récente de leur succès leur a donné des ailes. Les rythmes sont aériens et leurs paroles trébuchantes comme un nid de poule."
    ,"On lui a donné carte blanche. Elle a osé l'inédit. Cette soirée est menée à la baguette on vous dit. Elle vous roulera donc dans la farine."
    ,"Eux, ils claquent. Ils ont mis la main à la pâte et leur son est simplement poignant. Ils vont mettre le feu. Je mettrais ma main au feu qu'ils vont le mettre à Passion"
    ,"Le retour des géants de Passion 9. Cette fois sous l’étiquette de la Soulband, ces supermans de la scène vont vous enivrer. Car ils vont vous souler mdr"
    ,"Peut-être le groupe le plus branché. Ils sont beaux. Ils sont partout. A la télé. Dans les campagnes. A Passion. Achètetaplace"
    ,"Elles osent les Je interdits. Ces bombes de la scène vous en feront voir de toutes les couleurs."
    ,"Retrouvez les sensations de Couleur Café avec deux frérots qui vous feront léviter. Ces frérots rêveurs sont simon strueux que vous ne saurez plus les virer de scène."
    ,"Ils ont des millions de raisons de vous plaire. Les gammes virtuoses et la voix rauque de Little Joanne vont vous rendre gaga."
    ,"Une battle, un duo sur scène et c'est un match! Attendez vous à du très lourd avec ce groupe très country qui nous vient tout droit des Rocheuses. Et des coulisses de Passion X. Naturellement."
    ,"Tout Nostalgie en un tube, tout 2012 en un groupe. Attention à la boisson en début de soirée car ce son pourrait bien vous faire ressentir une légère ivresse."
    ,"IL était là l'an passé, ELLE tente sa chance au micro, ILS gardent le nom de leur morceau pour eux parce que ce sont des cachottiers. Suspense."
    ,"Un trio très féminin qui n'est pas né de la dernière pluie et qui se savoure goutte par goutte. Vous ne pouvez pas rater ça. Le paiement c'est en liquide.Prcq passion c de l'eau mdr"
    ,"Venez applaudir la révélation des JO de Paris 2024. Cette athlète de renom agrè(s)mentera votre soirée par ses figures à couper le souffle."
    ,"Ambiance très sèche avec une guitariste qui ne nous est plus inconnue. Retrouvez une artiste de passion 9 qui fait son come-back. Lou' est maline. Faites comme Lou'."
    ,"Remerciements particuliers. Un vétéran de PFC qui a d'ores et déjà percé dans le milieu professionel. Son nom est une promesse d'efficacité et l'aftermovie sortira très vite après l'évènement, alors stay tuned!"]
   var myIndex = 0
            
class TableViewController: UITableViewController {
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return artiste.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = artiste[indexPath.row]

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
      {
            myIndex = indexPath.row
            performSegue(withIdentifier: "segue", sender: self)
        }
    
}

