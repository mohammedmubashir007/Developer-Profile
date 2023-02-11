//
//  ContentView.swift
//  Developer Profile
//
//  Created by Mohammed Mubashir on 11/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").resizable().ignoresSafeArea(.all)
            
            VStack(alignment: .center) {
                Spacer()
                VStack(alignment: .center, spacing: 20) {
                    Image("mypic").resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180,alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5,x: 5,y: 5)
                    
                    Text("Mohammed Mubashir")
                        .font(.system(size: 25))
                        .font(.largeTitle).foregroundColor(.white).lineLimit(nil).bold().shadow(radius: 5)
                    Text("iOS Developer").font(.body).foregroundColor(.white).bold().shadow(color:.white, radius: 1,x: 1,y: 1)
                    
                    HStack(spacing: 40) {
                        Image(systemName: "heart.circle").resizable().aspectRatio(contentMode: .fit)
                        
                        Image(systemName: "network").resizable().aspectRatio(contentMode: .fit).onTapGesture {
                            UIApplication.shared.open(URL(string: "https://github.com/mohammedmubashir007")!)
                        }
                        
                        Image(systemName: "message.circle").resizable().aspectRatio(contentMode: .fit)
                        
                        Image(systemName: "phone.circle").resizable().aspectRatio(contentMode: .fit)
                    }
                    .foregroundColor(.white)
                    .frame(width: 250,height: 50,alignment: .center)
                    .shadow(color: .pink, radius: 5,y: 8)
                    
                }
                Spacer()
                VStack(alignment: .center,spacing: 30) {
                    
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .overlay(
                            Text("Follow")
                                .fontWeight(.bold)
                                .foregroundColor(.pink)
                                .font(.system(size: 30))
                        )
                        .onTapGesture {
                            UIApplication.shared.open(URL(string: "https://www.instagram.com/the.mubashir")!)
                        }
                    
                    HStack(alignment: .center, spacing: 60) {
                        
                        VStack {
                            Text("222")
                                .font(.title)
                                .foregroundColor(.pink)
                            
                            Text("Appreciation")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        VStack {
                            Text("222")
                                .font(.title)
                                .foregroundColor(.pink)
                            
                            Text("Appreciation")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        VStack {
                            Text("222")
                                .font(.title)
                                .foregroundColor(.pink)
                            
                            Text("Appreciation")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                    }
                    
                    Text("About").font(.system(size: 30)).foregroundColor(.black)
                    
                    Text("I am an iOS Developer.I also run a youtube channel where I teach iOS development. Let's connect and dive deeper into building apps.")
                        .font(.body)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .lineLimit(4)
                        .opacity(0.7)
                        .onTapGesture {
                            UIApplication.shared.open(URL(string: "https://www.youtube.com/mohammedmubashir")!)
                        }
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
