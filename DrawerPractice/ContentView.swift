//
//  ContentView.swift
//  DrawerPractice
//
//  Created by Ehsan Taghavi on 4.08.2022.
//

import Drawer
import SwiftUI

struct ContentView: View {
    @State var heights = [CGFloat(300), CGFloat(100)]
    
    var body: some View {
        NavigationView{
            ZStack{
                ScrollView{
                    Text("Some content in here")
                }
                Drawer(heights: $heights){
                    Color.blue
                }
            }
            .navigationTitle("Drawer Practice")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 13 Pro")

        }
    }
}
