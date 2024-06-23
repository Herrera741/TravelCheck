//
//  CalendarDayView.swift
//  TravelCheck
//
//  Created by Sergio Herrera on 6/23/24.
//

import SwiftUI

struct CalendarDayView: View {
    var body: some View {
        VStack {
            Text("JULY '24")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 5)
                .background(.red)
            Text("3")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.top, -5)
            Text("WED")
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.bottom, 5)
        }
        .background(.white)
        .frame(width: 100)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    CalendarDayView()
}
