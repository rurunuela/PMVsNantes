//
//  PMVs.swift
//  PMV
//
//  Created by richard on 22/12/2016.
//  Copyright © 2016 richard. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
public class PMV{
    static var Date = NSDate()
    static var listeNomPMVs: [String: PMV] = [String: PMV]()
    
    var id:String = ""
    var pmvOrigine:String = ""
    var adresseOrigine:String = ""
    var destination:String = ""
    var temps : String = ""
    
    public init(){
         
    }
    
     public init( id:String ,  pmvOrigine : String , adresseOrigine : String,destination : String, temps:String){
        self.adresseOrigine = adresseOrigine
        self.id = id
        self.pmvOrigine = pmvOrigine
        self.destination = destination
        self.temps = temps
        
        
    }
    /*
     
     Id
     PMV Origine
     Adresse origine
     Destination
     011
     PMV 01
     Prairie de Mauves
     PCE NEPTUNE
 */
    

    public static func MyInit(){
        var pmv = PMV(id: "011",pmvOrigine: "PMV 01",adresseOrigine: "Prairie de Mauves",destination: "PCE NEPTUNE",temps: "");
      
        listeNomPMVs[pmv.id] = pmv
    }
    
    
    
    
    public static func getAllPMVs(){
        //request web
        
        Alamofire.request(.GET, "http://data.nantes.fr/api/getTempsParcours/1.0/39W9VSNCSASEOGV/?output=json", parameters: ["foo": "bar"]).responseJSON { response in
            
            
            var json = JSON(data: response.data!)
            
            //debugPrint(json)
            
            //debugPrint(json["data"]["Itineraires"])
            let liste = (json["opendata"]["answer"]["data"]["Itineraires"]["Itineraire"])
            for  i in 0...liste.count-1 {
                //if ( liste[i]["Identifiant"] == "012") {
                    debugPrint(" --> \(liste[i])")
                //}
            }
            
        }
    }
    
    
    
}
