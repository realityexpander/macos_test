//
//  ContentView.swift
//  test macos
//
//  Created by Chris Athanas on 3/9/23.
//

import SwiftUI
import Cocoa

struct ContentView: View {
    @State var count = 1
    
    var body: some View {
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world! " + count.formatted())
            
            Button(action: {
                print("heellooo")
                count = count + 1
            }, label: {
                Text("click")
            })
            
            Button(action: {
                print("Slapping")

                var str = "Hello, playground"

                // get URL to the the documents directory in the sandbox
                let documentsUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0] as NSURL

                // add a filename
                let fileUrl = documentsUrl.appendingPathComponent("foo.txt")

                // write to it
                try! str.write(to: fileUrl!, atomically: true, encoding: String.Encoding.utf8)
                
                
            }, label: {
                Text("click")
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
