//
//  ContentView.swift
//  DrawerPractice
//
//  Created by Ehsan Taghavi on 4.08.2022.
//

import Drawer
import SwiftUI

struct ContentView: View {
    @State var heights = [CGFloat(100),CGFloat(300)]
    
    var body: some View {
        NavigationView{
            ZStack{
                ScrollView{
                    Text("Some content in here")
                }
                Drawer(heights: $heights){
                    ZStack{
                        Color(uiColor: UIColor.secondarySystemBackground)
                        
                        VStack{
                            RoundedRectangle(cornerRadius: 12)
                                .frame(width: 60, height: 8, alignment: .center)
                                .background(Color.white)
                                .padding()
                            
                            DrawerContentView()
                            
                            Spacer()
                        }
                    }
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

struct DrawerContentView: View{
    @State var text = ""
    
    var body: some View {
        VStack {
            TextField("Search",text: $text)
                .padding()
                .background(Color(uiColor: UIColor.systemGray))
        }
    }
}
