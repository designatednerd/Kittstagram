//
//  CatPhotoView.swift
//  Kittstagram
//
//  Created by Ellen Shapiro on 12/13/20.
//

import SwiftUI

struct CatPhotoView: View {
    var image: UIImage
    var caption: String
    @State var lastScaleValue: CGFloat = 1.0

    
    var body: some View {
        VStack {
            Image(uiImage: self.image)
                .resizable()
                .scaleEffect(self.lastScaleValue)
                .aspectRatio(contentMode: .fit)
                .gesture(MagnificationGesture()
                            .onChanged { value in
                                self.lastScaleValue = value
                            }
                            .onEnded { _ in
                                self.lastScaleValue = 1.0
                            }
                )
            Text(self.caption)
                .padding(8)
        }
    }
}

struct CatPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        CatPhotoView(image: UIImage(named: "hank")!, caption: "This is what a cat looks like in a photo caption. I don't know why this auto-realigns to left justified when it's more than one line.")
    }
}
