//
//  ContentView.swift
//  CatsSwiftUI
//
//  Created by Oleg Stepanov on 30.11.2021.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    @State var selectedPhoto: String? = nil
    var body: some View {
        NavigationView {
            List(viewModel.cats) { cat in
                CatsCell(photo: cat.photoName, selectedPhoto: self.$selectedPhoto)
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Cats")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CatsCell: View {
    @State private var isSelected = false
    var photo: String
    @Binding var selectedPhoto: String?
    var body: some View {
        VStack(alignment: .center) {
            HStack{
                Spacer()
                if !isSelected {
                    CatImage(photo: photo, width: 200, height: 200)
                } else {
                    CatImage(photo: photo, width: 300, height: 300)
                }
                Spacer()
            }
            if isSelected {
                Button("Show more") {
                    print("do some")
                }
            }
        } .onTapGesture {
            self.selectedPhoto = self.photo
        }
    }
}

struct CatImage: View {
    var photo: String
    var width: CGFloat
    var height: CGFloat
    var body: some View {
        Image(photo)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
    }
}
