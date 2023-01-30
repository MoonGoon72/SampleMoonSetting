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
                }
                .padding(.vertical, 2)
                Section {
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
                    HStack {
                        Image(systemName: "water.waves")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink(destination: Text("블루투스 화면")) {
                            HStack {
                                Text("Bluetooth")
                                Spacer()
                                Text("켬")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
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
                    HStack {
                        Image(systemName: "personalhotspot")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("개인용 핫스팟") {
                            Text("핫스팟 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "v.square.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink(destination: Text("VPN 화면")) {
                            HStack {
                                Text("VPN")
                                Spacer()
                                Text("연결됨")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                
                Section {
                    HStack {
                        Image(systemName: "bell.badge.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.red)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("알림") {
                            Text("알림 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "speaker.wave.2.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.red)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("사운드 및 햅틱") {
                            Text("사운드 및 햅틱 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "moon.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("집중 모드") {
                            Text("집중 모드 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "hourglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("스크린 타임") {
                            Text("스크린 타임 화면")
                        }
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
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
