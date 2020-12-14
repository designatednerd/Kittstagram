//
//  ContentListView.swift
//  Kittstagram
//
//  Created by Ellen Shapiro on 12/13/20.
//

import SwiftUI

struct ContentListView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: GeorgeView()) {
                    Text("George Michael")
                }
                NavigationLink(destination: HankView()) {
                    Text("Hank Williams")
                }
                NavigationLink(destination: BothView()) {
                    Text("Both Cats")   
                }
            }.navigationTitle("Cats!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentListView()
    }
}
