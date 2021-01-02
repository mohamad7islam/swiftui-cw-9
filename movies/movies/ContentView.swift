//
//  ContentView.swift
//  movies
//
//  Created by mohamad on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(){
            List(movies){ movie in
                NavigationLink(
                    destination: MovieView(movie: movie),
                    label: {
                        movierow(movie: movie)
                    })
            }.navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}

struct movierow: View {
    var movie : Movie
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
            Image(movie.title)
                .resizable()
                .scaledToFit()
                .frame(height : 150)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading){
                Text(movie.title)
                    .font(.largeTitle)
                Text(movie.character.joined(separator: ","))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        }.padding(.vertical)
    }
}
