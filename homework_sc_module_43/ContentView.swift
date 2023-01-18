//
//  ContentView.swift
//  homework_sc_module_43
//
//  Created by Ruslan Ismailov on 16/01/23.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            ZStack{
                let colorStops: [Gradient.Stop] = [
                    .init(color: Color.red, location: 0),
                    .init(color: Color.black, location: 0.25)
                ]
                LinearGradient(stops: colorStops, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                
                VStack{
                    Text("Description of Stephen King films")
                      .foregroundColor(.white)
                      .font(.system(size: 30))
                      .multilineTextAlignment(.center)
                      .padding(.top, 36)
                      .padding([.trailing, .leading])
                    List{
                        ForEach(movies){movie in
                            NavigationLink(destination: MovieDetails(movie: movie)){
                                HStack(alignment: .center){
                                    Image(movie.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 90, height: 150, alignment: .center)
                                        .clipped()
                                        .cornerRadius(10)
                                        
                                        Spacer()
                                    VStack(alignment: .trailing){
                                        Text("Title:")
                                            .padding(.leading, 20.0)
                                            .padding(.bottom, 10)
                                            .font(.body)
                                            .foregroundColor(Color.red)
                                        
                                        Text(movie.title)
                                            .padding(.leading, 20.0)
                                            .font(.title2)
                                            .foregroundColor(Color.white)
                                    }
                                    
                                }
                                
                            }
                            .background(Color.clear)
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                            .foregroundColor(.clear)
                            
                        }
                        
                    }
                    .listStyle(.plain)
                    .padding(.top)
                    
                }
                
            }
            
            
        }
        .tint(Color.white)
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
