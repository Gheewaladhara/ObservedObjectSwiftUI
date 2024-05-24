//
//  ContentView.swift
//  ObservedObject
//
//  Created by GHEEWALA DHARA on 20/05/24.
//

// @ObservedObject property wrapper is used inside a view to store an observable object instance, 



import SwiftUI

class Userprogress: ObservableObject{
    @Published var score = 0
}


struct InnerView: View {
    @ObservedObject var progress: Userprogress

    var body: some View {
        Button("Increase Score") {
            progress.score += 1
        }
    }
}



struct ContentView: View {
  
    @StateObject var progress = Userprogress()
    
    var body: some View {
        VStack {
            Text("Your score is \(progress.score)")
            InnerView(progress: progress)
        }
        
    }
}

#Preview {
    ContentView()
}
