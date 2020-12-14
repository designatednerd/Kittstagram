//
//  GeorgeView.swift
//  Kittstagram
//
//  Created by Ellen Shapiro on 12/13/20.
//

import SwiftUI

struct GeorgeView: View {
    var body: some View {
        VStack {
            CatPhotoView(image: UIImage(named: "georgie")!,
                         caption: """
                This is George Michael. He's named after the character on the TV show "Arrested Development".
                """)
                .navigationTitle("George Michael")
            Spacer()
        }
    }
}

struct GeorgeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GeorgeView()
        }
    }
}
