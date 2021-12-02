//
//  ContentView.swift
//  CatsSwiftUI
//
//  Created by Oleg Stepanov on 30.11.2021.
//

import SwiftUI


struct CatsContentView: View {
    @StateObject var viewModel = CatsViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.cats) { cat in
                VStack {
                    Image(cat.photoName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(viewModel.photoScale(cat))
                        .animation(.linear(duration: 0.5),value: viewModel.photoScale(cat))
                    
                    if viewModel.selectedPhoto == cat.photoName {
                        NavigationLink(destination: CatDetail(photoName: cat.photoName), tag: "Detail", selection: $viewModel.selection) { EmptyView()
                        }.hidden()
                        Button("Zoom") {
                            viewModel.selection = "Detail"
                        }.foregroundColor(.accentColor)
                    }
                }.onTapGesture {
                    viewModel.selectPhoto(cat)
                }
                .listRowSeparator(.hidden)
                .buttonStyle(.plain)
            }
            .listStyle(.plain)
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Cats")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CatsContentView()
            CatsContentView()

        }
    }
}
