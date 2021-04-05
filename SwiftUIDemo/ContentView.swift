//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Sikandar Ali on 03/04/2021.
//

import SwiftUI
 
struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack{
               citytextView(cityname: "Islamabad,PK")
                MainweatherstatusView(imagename: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 78)
                
                HStack(spacing: 20){
                    
                    WeatherDayView(dayofweek: "TUE",
                                   imagename: "cloud.sun.fill",
                                   temperature: 12)
                    WeatherDayView(dayofweek: "WED",
                                   imagename: "cloud.sun.fill",
                                   temperature: 14)
                    WeatherDayView(dayofweek: "THU",
                                   imagename: "cloud.sun.fill",
                                   temperature: 15)
                    WeatherDayView(dayofweek: "FRI",
                                   imagename: "cloud.sun.fill",
                                   temperature: 18)
                    WeatherDayView(dayofweek: "SAT",
                                   imagename: "cloud.sun.fill",
                                   temperature: 11)
                    WeatherDayView(dayofweek: "SUN",
                                   imagename: "cloud.sun.fill",
                                   temperature: 13)
                }
                
                 Spacer()
                Button{
                    isNight.toggle()
                } label:{
                    weatherButton(title: "Change Day Time", textcolor: .blue, bgcolor: .white)
                }
               Spacer()
            }
           
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
               
             
            
        }
    }
}

struct WeatherDayView: View {
    var dayofweek :String
    var imagename:String
    var temperature:Int
    var body: some View {
        VStack
        {
            
            Text(dayofweek).font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imagename )
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 25, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    @Binding var isNight:Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,isNight ? .gray :Color("lightblue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct citytextView: View {
    var cityname:String
    var body: some View {
        Text(cityname).font(.system(size: 32, weight: .medium, design: .default)).foregroundColor(.white)
            .padding()
    }
}

struct MainweatherstatusView: View {
    var imagename:String
    var temperature:Int
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}


