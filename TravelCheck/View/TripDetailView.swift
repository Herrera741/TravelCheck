//
//  TripDetailView.swift
//  TravelCheck
//
//  Created by Sergio Herrera on 6/23/24.
//

import SwiftUI

struct TripDetailView: View {
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.gray.ignoresSafeArea()
            
            ScrollView(.vertical) {
                LazyVStack(alignment: .leading) {
                    HStack {
                        Text("Trip Detail")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Image(systemName: "airplane.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.yellow)
                    } // header
                    .padding(.horizontal, 15)
                    
                    HStack {
                        CalendarDayView()
                        
                        Image(systemName: "arrowshape.forward.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .aspectRatio(contentMode: .fit)
                        
                        CalendarDayView()
                        
                        VStack {
                            Text("5")
                            Text("Days")
                        }
                        .fontWeight(.bold)
                        .font(.title2)
                        .padding(.horizontal, 10)
                    } // calendar info
                    .frame(maxWidth: .infinity)
                    
                    VStack(alignment: .leading) {
                        ForEach(mockSections) { section in
                            Text(section.name)
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            ForEach(section.items) { item in
                                HStack {
                                    Image(systemName: "checkmark.circle.fill")
                                        .symbolRenderingMode(.palette)
                                        .foregroundStyle(.black, .green)
                                    
                                    Text(item.description)
                                }
                            }
                            
                            Button("Add Item") {
                                // do something
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(.teal)
                        }
                        
                        Button("Add Section") {
                            // do something
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                    } // sections
                    .padding(.vertical, 12)
                    .padding(.horizontal, 15)
                }
            }
                
        }
    }
}

#Preview {
    TripDetailView()
}
