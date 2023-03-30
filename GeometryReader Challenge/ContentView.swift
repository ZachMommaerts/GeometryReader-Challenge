//
//  ContentView.swift
//  GeometryReader Challenge
//
//  Created by Zach Mommaerts on 3/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            GeometryReader{ geo in
                
                Rectangle()
                    .foregroundColor(Color.green)
                    .onTapGesture {
                        print("width: \(geo.size.width), height: \(geo.size.height)")
                    }
                
                Rectangle()
                    .frame(width: geo.size.width*0.66, height: geo.size.height/4)
                    .foregroundColor(Color.red)
                    .position(x: geo.size.width/2, y: geo.size.height/2)
                    .onTapGesture {
                        print("width: \(geo.size.width*0.66), height: \(geo.size.height/4)")
                    }
            }
            
            GeometryReader{ geo in
                
                Rectangle()
                    .frame(width: geo.size.width/2)
                    .foregroundColor(Color.yellow)
                    .onTapGesture {
                        print("width: \(geo.size.width/2), height: \(geo.size.height)")
                    }
                
                Rectangle()
                    .frame(width: geo.size.width/2)
                    .foregroundColor(Color.orange)
                    .padding([.leading], geo.size.width/2)
                    .onTapGesture {
                        print("width: \(geo.size.width/2), height: \(geo.size.height)")
                    }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
