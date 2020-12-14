//
//  HankView.swift
//  Kittstagram
//
//  Created by Ellen Shapiro on 12/13/20.
//

import SwiftUI

struct HankView: View {
    @State var showingBytes = false

    var body: some View {
        VStack {
            CatPhotoView(image: UIImage(named: "hank")!,
                     caption: """
                This is Hank Williams. He's named after a country singer from the 1940s.
                
                He is a weird cat who enjoys chewing on things he probably shouldn't.
                """)
            
            Spacer()
            
            Button(action: {
                self.showingBytes.toggle()
            }, label: {
                Text("Wanna see?")
                    .foregroundColor(.white)
                    .padding(10.0)
            })
            .background(Color.blue)
            .cornerRadius(5)
            .sheet(isPresented: $showingBytes) {
               ByteCollection()
            }
            
            Spacer()
        }.navigationTitle("Hank")
    }
}

struct HankView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HankView()
        }
    }
}
