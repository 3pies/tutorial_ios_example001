//
//  ContentView.swift
//  example001
//
//  Created by Daniel Ferrer on 16/07/2020.
//  Copyright © 2020 3pies. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var repository = RepositoryCovid19Stats()
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
