//
//  Movie.swift
//  movies
//
//  Created by mohamad on 12/29/20.
//

import Foundation
struct Movie : Hashable , Identifiable {
    var title : String
    var character : [String]
    var id = UUID()
}

let kungfu = Movie(title: "Kungfupanda", character: ["Master Shifu", "Po", "Tigress"])
let edge = Movie(title: "Edge of Tomorrow", character: ["Tom Cruise","Emily Blunt"])
let taken = Movie(title: "taken", character: ["Liam Neeson","Maggie Grace"])


let movies =  [kungfu , edge , taken]
