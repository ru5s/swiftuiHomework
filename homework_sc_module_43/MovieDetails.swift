//
//  MovieDetails.swift
//  homework_sc_module_43
//
//  Created by Ruslan Ismailov on 16/01/23.
//

import SwiftUI

struct MovieDetails: View {
    
    let movie: Movie
    
    var body: some View {
        
        ZStack{
            let colorStops: [Gradient.Stop] = [
                .init(color: Color.red, location: 0),
                .init(color: Color.black, location: 0.25)
            ]
            LinearGradient(stops: colorStops, startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            ScrollView {
            VStack{
                
                    Text(movie.title)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .multilineTextAlignment(.center)
                    Image(movie.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250)
                        .cornerRadius(10)
                    Text(movie.detailed)
                        .font(.system(size: 22))
                        .foregroundColor(.white)
                        .padding(.leading)
                        .padding(.top, 25)
                        
                    Spacer()
                }
            }
                
        }
        
        .background(Color.clear)
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetails(movie: movies[5])
    }
}
