//
//  ContentView.swift
//  Kadai11-SwiftUI
//
//  Created by Ryuga on 2023/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingModal = false
    @State private var selectedPrefecture = "未選択"
    
    var body: some View {
        VStack {
            HStack(spacing: 50) {
                Text("都道府県")
                Text(selectedPrefecture)
                Button("変更"){
                    self.showingModal.toggle()
                }
                .fullScreenCover(isPresented: $showingModal) {
                    PrefectureListView(prefecture: $selectedPrefecture)
                }
            }
            .padding(40)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
