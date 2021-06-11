//
//  ContentView.swift
//  SwiftUI Gradients
//
//  Created by Amben on 6/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color("myColor"),
                    Color(.systemBlue),
                    Color(.systemPink)
                ]),
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all, edges: .all)
            
            VStack{
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 220, height: 220, alignment: .center)
                    .padding()
                
                Text("Sunny!")
                    .font(.system(size: 42,
                                  weight: .semibold,
                                  design: .default))
                    .foregroundColor(.white)
                
                
                Spacer()
                
            } //vstack

        } //zstack
    } //body
} //contentview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
