//
//  MovieView.swift
//  movies
//
//  Created by mohamad on 1/2/21.
//

import SwiftUI

struct MovieView: View {
    var movie : Movie
    var body: some View {
        ZStack{
            Group{
                Image(movie.title)
                    .resizable()
                    .frame(width: 900.0, height: 900.0, alignment: .center)
                    .scaledToFill()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center){
                Image(movie.title)
                    .resizable()
                    .scaledToFit()
                    .frame(height : 300)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white , lineWidth : 6))
                Text(movie.title)
                    .font(.system(size : 50))
                Text(movie.character.joined(separator: ","))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
            }
        }
        .padding(.vertical)
        .foregroundColor(.white)
        .shadow(radius: 8 )
    }
}



struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie: kungfu)
            .previewDevice("iPhone 11")
    }
}
