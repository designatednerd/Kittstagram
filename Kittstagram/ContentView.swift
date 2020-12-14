//
//  ContentView.swift
//  Kittstagram
//
//  Created by Ellen Shapiro on 12/13/20.
//

import SwiftUI

struct ContentListView: View {
    var body: some View {
        NavigationView {
            List {
                Text("George Michael")
                Text("Hank Williams")
            }.navigationTitle("Cats!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentListView()
    }
}
