import SwiftUI

struct Empty_State: View {
    var body: some View {
        ZStack {
            Color.black
            .ignoresSafeArea()
            HStack {
                Button(action: {
                    print("Plus button clicked")
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.btnBg)
                            .position(x: 350, y: 80)
                        Image(systemName: "plus")
                            .foregroundColor(.tx1)
                            .font(.system(size: 22))
                            .position(x: 350, y: 80)
                    }
                }
                .padding(.leading)
                // Line Button
                Button(action: {
                    // Action for the line button
                    print("Line button clicked")
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.btnBg)
                            .position(x: 110, y: 80)
                        
                        Image(systemName: "line.3.horizontal.decrease")
                            .foregroundColor(.tx1)
                            .font(.system(size: 21))
                            .position(x: 110, y: 80)
                    }
                }
                .padding(.leading)
            }
            VStack {
                Text("Journal")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .font(.system(size: 34))
                    .position(x: 85, y: 80)
                
                Image("NoteBook")
                    .resizable()
                    .frame(width: 77.7, height: 101)
                    .padding(.bottom, 20)
                
                Text("Begin Your Journal")
                    .fontWeight(.bold)
                    .foregroundStyle(Color.tx1)
                    .font(.system(size: 24))
                    .padding(.bottom, 350)
                
                Text("Craft your personal diary, tap the plus icon to begin")
                    .frame(width: 270, height: 100)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .padding(.top, -375)
            }
            
            
        }
    }
}
#Preview {
    Empty_State()
}
