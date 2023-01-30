//
//  ContentView.swift
//  SampleMoonSetting
//
//  Created by cnu on 2023/01/27.
//

import SwiftUI

struct ContentView: View {
    @State var isToggle = false
    @State private var isAirplaneToggle = false
    
    var body: some View {
        
        NavigationView {
            List {
                Section {
                    NavigationLink {
                        Text("Profile page")
                    } label: {
                        profileCell()
                    }
                }
                .padding(.vertical, 2)
                Section {
                    airplaneToggleCell()
                    textCell(imageName: "wifi",
                             backgroundColor: .blue,
                             foregroundColor: .white,
                             navigationTitle: "Wi-Fi",
                             text: "IPTIME")
                    textCell(imageName: "water.waves",
                             backgroundColor: .blue,
                             foregroundColor: .white,
                             navigationTitle: "Bluetooth",
                             text: "켬")
                    planeCell(imageName: "antenna.radiowaves.left.and.right",
                              backgroundColor: .green,
                              foregroundColor: .white,
                              navigationTitle: "셀룰러",
                              destination: {Text("셀룰러 화면")})  // trailing closure?
                    planeCell(imageName: "personalhotspot",
                              backgroundColor: .green,
                              foregroundColor: .white,
                              navigationTitle: "개인용 핫스팟") {
                        Text("핫스팟 화면")
                    }
                    textCell(imageName: "v.square.fill",
                             backgroundColor: .blue,
                             foregroundColor: .white,
                             navigationTitle: "VPN",
                             text: "연결됨")
                }
                Section {
                    planeCell(imageName: "bell.badge.fill",
                              backgroundColor: .red,
                              foregroundColor: .white,
                              navigationTitle: "알림") {
                        Text("알림 화면")
                    }
                    planeCell(imageName: "speaker.wave.2.fill",
                              backgroundColor: .red,
                              foregroundColor: .white,
                              navigationTitle: "사운드 및 햅틱") {
                        Text("사운드 및 햅틱 화면")
                    }
                    planeCell(imageName: "moon.fill",
                              backgroundColor: .indigo,
                              foregroundColor: .white,
                              navigationTitle: "집중 모드") {
                        Text("집중 모드 화면")
                    }
                    planeCell(imageName: "hourglass",
                              backgroundColor: .indigo,
                              foregroundColor: .white,
                              navigationTitle: "스크린 타임") {
                        Text("스크린 타임 화면")
                    }
                }
                
                Section {
                    HStack {
                        Image(systemName: "gear")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("일반") {
                            Text("일반 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "figure.walk.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("손쉬운 사용") {
                            Text("손쉬운 사용 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "hand.raised.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("개인정보 보호 및 보안") {
                            Text("개인정보 보호 및 보안 화면")
                        }
                    }
                }
                
                Section {
                    HStack {
                        Image(systemName: "key.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("암호") {
                            Text("암호 화면")
                        }
                    }
                }
                
                Section {
                    HStack {
                        Image(systemName: "safari")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("Safari") {
                            Text("Safari 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "newspaper")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.white)
                            .foregroundColor(.red)
                            .cornerRadius(6)
                        NavigationLink("News") {
                            Text("News 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "globe")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.black)
                            .foregroundColor(.mint)
                            .cornerRadius(6)
                        NavigationLink("번역") {
                            Text("번역 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "map")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.green)
                            .cornerRadius(6)
                        NavigationLink("지도") {
                            Text("지도 화면")
                        }
                    }
                }
            }
            .navigationTitle(Text("설정"))
        }
    }
    @ViewBuilder private func profileCell() -> some View {
        HStack {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .background(.white)
                .foregroundColor(.gray)
                .opacity(0.47)
                .padding(.all, 1)
            VStack(alignment: .leading, spacing: 3) {
                Text("MoonGoon")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                Text("Apple ID, iCloud, 미디어 및 구입")
                    .font(.system(size: 14))
            }.padding(.leading, 8)
        }
    }
    
    @ViewBuilder private func airplaneToggleCell() -> some View {
        HStack {
            Image(systemName: "airplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(.orange)
                .foregroundColor(.white)
                .cornerRadius(6)
            Toggle("에어플레인 모드" ,isOn: $isAirplaneToggle)
        }
    }
    @ViewBuilder private func wifiTextCell() -> some View {
        HStack {
            Image(systemName: "wifi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(6)
            NavigationLink(destination: Text("Wi-Fi 화면")) {
                HStack {
                    Text("Wi-Fi")
                    Spacer()
                    Text("IPTIME")
                        .foregroundColor(.gray)
                }
            }
        }
    }
    @ViewBuilder private func cellulerPlaneCell() -> some View {
        HStack {
            Image(systemName: "antenna.radiowaves.left.and.right")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(6)
            NavigationLink("셀룰러") {
                Text("셀룰러 화면")
            }
        }
    }
    @ViewBuilder private func planeCell<V: View>(imageName: String, backgroundColor: Color, foregroundColor: Color, navigationTitle: String, destination: @escaping () -> V) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(6)
            NavigationLink(navigationTitle) {
                destination()  // 값의 반환 위함
            }
        }
    }
    @ViewBuilder private func textCell(imageName: String, backgroundColor: Color, foregroundColor: Color, navigationTitle: String, text: String) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(6)
            NavigationLink(destination: Text(navigationTitle + " 화면")) {
                HStack {
                    Text(navigationTitle)
                    Spacer()
                    Text(text)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
