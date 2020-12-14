//
//  ByteView.swift
//  Kittstagram
//
//  Created by Ellen Shapiro on 12/13/20.
//

import SwiftUI
import HankBytes

struct ByteView: View {
    let byte: HankByte

    var body: some View {
        CatPhotoView(image: byte.image!,
                     caption: byte.caption)
    }
}

struct ByteView_Previews: PreviewProvider {
    static var previews: some View {
        ByteView(byte: .potato)
    }
}
