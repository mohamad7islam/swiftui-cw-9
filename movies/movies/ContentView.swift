//
//  ContentView.swift
//  movies
//
//  Created by mohamad on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(){
            movie(movieName: "Kungfupanda", movieChars: ["Master Shifu", "Po", "Tigress"])
            movie(movieName: "Edge of Tomorrow", movieChars: ["Tom Cruise","Emily Blunt"])
            movie(movieName: "taken", movieChars: ["Liam Neeson","Maggie Grace"])


        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}

struct movie: View {
    let movieName : String
    let movieChars : [String]
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(height : 150)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading){
                Text(movieName)
                    .font(.largeTitle)
                Text(movieChars.joined(separator: ","))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        }.padding(.vertical)
    }
}
