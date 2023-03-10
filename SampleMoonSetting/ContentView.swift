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
                    toggleCell(imageName: "airplane",
                               backgroundColor: .orange,
                               foregroundColor: .white,
                               toggleTitle: "에어플레인 모드",
                               isAirplaneToggle: $isAirplaneToggle)
                    navigationLinkCell(imageName: "wifi",
                                       backgroundColor: .blue,
                                       foregroundColor: .white,
                                       navigationTitle: "Wi-Fi",
                                       text: "IPTIME") {
                        Text("Wi-Fi 화면")
                    }
                    navigationLinkCell(imageName: "water.waves",
                                       backgroundColor: .blue,
                                       foregroundColor: .white,
                                       navigationTitle: "Bluetooth",
                                       text: "켬") {
                        Text("Bluetooth 화면")
                    }
                    navigationLinkCell(imageName: "antenna.radiowaves.left.and.right",
                                       backgroundColor: .green,
                                       foregroundColor: .white,
                                       navigationTitle: "셀룰러",
                                       text: nil) {
                        Text("셀룰러 화면")
                    }
                    navigationLinkCell(imageName: "personalhotspot",
                                       backgroundColor: .green,
                                       foregroundColor: .white,
                                       navigationTitle: "개인용 핫스팟",
                                       text: nil) {
                        Text("핫스팟 화면")
                    }
                    navigationLinkCell(imageName: "v.square.fill",
                                       backgroundColor: .blue,
                                       foregroundColor: .white,
                                       navigationTitle: "VPN",
                                       text: "연결됨") {
                        Text("VPN 화면")
                    }
                }
                Section {
                    navigationLinkCell(imageName: "bell.badge.fill",
                                       backgroundColor: .red,
                                       foregroundColor: .white,
                                       navigationTitle: "알림") {
                        Text("알림 화면")
                    }
                    navigationLinkCell(imageName: "speaker.wave.2.fill",
                                       backgroundColor: .red,
                                       foregroundColor: .white,
                                       navigationTitle: "사운드 및 햅틱") {
                        Text("사운드 및 햅틱 화면")
                    }
                    navigationLinkCell(imageName: "moon.fill",
                                       backgroundColor: .indigo,
                                       foregroundColor: .white,
                                       navigationTitle: "집중 모드") {
                        Text("집중 모드 화면")
                    }
                    navigationLinkCell(imageName: "hourglass",
                                       backgroundColor: .indigo,
                                       foregroundColor: .white,
                                       navigationTitle: "스크린 타임") {
                        Text("스크린 타임 화면")
                    }
                }
                
                Section {
                    navigationLinkCell(imageName: "gear",
                                       backgroundColor: .gray,
                                       foregroundColor: .white,
                                       navigationTitle: "일반") {
                        Text("일반 화면")
                    }
                    navigationLinkCell(imageName: "figure.walk.circle",
                                       backgroundColor: .blue,
                                       foregroundColor: .white,
                                       navigationTitle: "손쉬운 사용") {
                        Text("손쉬운 사용 화면")
                    }
                    navigationLinkCell(imageName: "hand.raised.fill",
                                       backgroundColor: .blue,
                                       foregroundColor: .white,
                                       navigationTitle: "개인 정보 보호 및 보안") {
                        Text("개인 정보 보호 및 보안 화면")
                    }
                }
                Section {
                    navigationLinkCell(imageName: "key.fill",
                                       backgroundColor: .gray,
                                       foregroundColor: .white,
                                       navigationTitle: "암호") {
                        Text("암호 화면")
                    }
                }
                
                Section {
                    navigationLinkCell(imageName: "safari",
                                       backgroundColor: .blue,
                                       foregroundColor: .white,
                                       navigationTitle: "Safari") {
                        Text("사파리 화면")
                    }
                    navigationLinkCell(imageName: "newspaper",
                                       backgroundColor: .white,
                                       foregroundColor: .red,
                                       navigationTitle: "News") {
                        Text("News 화면")
                    }
                    navigationLinkCell(imageName: "globe",
                                       backgroundColor: .black,
                                       foregroundColor: .mint,
                                       navigationTitle: "번역") {
                        Text("번역")
                    }
                    navigationLinkCell(imageName: "map",
                                       backgroundColor: .blue,
                                       foregroundColor: .green,
                                       navigationTitle: "지도") {
                        Text("지도 화면")
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
    
    @ViewBuilder private func toggleCell(imageName: String,
                                         backgroundColor: Color,
                                         foregroundColor: Color,
                                         toggleTitle: String,
                                         isAirplaneToggle: Binding<Bool> ) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(6)
            Toggle(toggleTitle ,isOn: isAirplaneToggle)
        }
    }
    
    @ViewBuilder private func navigationLinkCell<V: View>(imageName: String,
                                                          backgroundColor: Color,
                                                          foregroundColor: Color,
                                                          navigationTitle: String,
                                                          text: String? = nil,
                                                          destination: @escaping () -> V) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(6)
            if let text = text {
                NavigationLink(destination: destination) {
                    HStack {
                        Text(navigationTitle)
                        Spacer()
                        Text(text)
                            .foregroundColor(.gray)
                    }
                }
            } else {
                NavigationLink(navigationTitle) {
                    destination()  // 값의 반환 위함
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
