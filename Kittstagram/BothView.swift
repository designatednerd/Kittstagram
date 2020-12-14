//
//  BothView.swift
//  Kittstagram
//
//  Created by Ellen Shapiro on 12/13/20.
//

import SwiftUI

struct BothView: View {
    var body: some View {
        VStack {
            CatPhotoView(image: UIImage(named: "both")!,
                                        caption: """
                Both cats sitting in the same place at the same time.
                
                Guess from the level of grumpiness on each of their faces who got there first!
                """)
            Spacer()
        }.navigationTitle("Both Cats")
        
    }
}

struct BothView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BothView()
        }
    }
}
