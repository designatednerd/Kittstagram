//
//  ByteCollection.swift
//  Kittstagram
//
//  Created by Ellen Shapiro on 12/13/20.
//

import SwiftUI
import HankBytes

struct ByteCollection: View {
    let bytes = HankByte.allBytes.shuffled()
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal) {
                HStack {
                    ForEach(self.bytes) { byte in
                        ByteView(byte: byte)
                            .frame(width: geometry.size.width, height: geometry.size.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
            }
        }
    }
}

struct ByteCollection_Previews: PreviewProvider {
    static var previews: some View {
        ByteCollection()
    }
}
