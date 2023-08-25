//
//  ContentView.swift
//  AccessingCamera
//
//  Created by scholar on 6/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var isImagePickerShowing = true
    @State var selectedImage: UIImage?
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    var body: some View {
        VStack {
            
            Image(uiImage: selectedImage ?? UIImage(named: "sea2")!)
                .resizable()
                .frame (width: 300, height:300)
            
            Button("Select a Photo!") {
        self.sourceType = .photoLibrary
            isImagePickerShowing = true
        }
        .sheet(isPresented: $isImagePickerShowing) {
            ImagePicker(selectedImage: $selectedImage, isImagePickerShowing: $isImagePickerShowing, sourceType: self.sourceType)
            
            
        }
        
        
            
                                
                            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


    
        
    
    

