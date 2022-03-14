//
//  ContentView.swift
//  SwiftUI_Toy
//
//  Created by AlexHwang on 2022/03/14.
//

import SwiftUI

// swifts는 객체지향, 함수형프로그래밍 둘다 지원
struct ContentView: View {
    var emojis: Array<String> = ["💜", "💚", "🧡", "❤️", "🖤", "🤍", "🤎", "💙", "💔", "❤️‍🔥", "❤️‍🩹", "❣️", "💕", "💞", "💓", "💗", "💖", "💘", "💝"]
    @State var emojiCount = 6
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    // id: \.self부분은 SwiftUI가 배열의 각 요소를 고유하게 식별할 수 있도록 하기 위해 필요
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            /* mvvm 적용전
            Spacer()
            HStack {
                add
                Spacer()
                remove

            }
            .font(.largeTitle)
            .padding(.horizontal)
            .foregroundColor(.gray)
             */
        }
        .padding(.horizontal)
    }
    /* mvvm 적용전
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            VStack{
                Image(systemName: "plus.circle")
            }
        }
    }

    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            VStack{
                Image(systemName: "minus.circle")
            }
        }
    }
     */
    
}

struct CardView: View {
    var content: String
    @State private var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 30)
            
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3) // 경계선까지
                Text(content)
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
.previewInterfaceOrientation(.portrait)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
#endif
