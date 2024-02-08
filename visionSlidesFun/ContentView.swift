//  ContentView.swift
//  Created by Zeno on 2024/2/8.

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    let slidesArr = ["Slides1", "Slides2", "Slides3","Slides4","Slides5"]
    
    var body: some View {GeometryReader { geometry in // 使用 GeometryReader 获取当前视图的尺寸
        TabView {
            ForEach(0..<4) { index in
                Image(slidesArr[index])
                    .resizable()
                    .scaledToFit()
                    .scaledToFill() // 保持图片的宽高比来填充给定的尺寸
            }
            .tabViewStyle(PageTabViewStyle())
        }
//            ScrollView(.vertical, showsIndicators: false) { //滚动的容器
//                VStack(spacing: 0) { //确保没有空隙
//                    ForEach(slidesArr, id: \.self) { slideName in
//                        Image(slideName)
//                            .resizable() // 使图片可以被拉伸或缩放
//                            .scaledToFill() // 保持图片的宽高比来填充给定的尺寸
//                            .edgesIgnoringSafeArea(.all)
//                            .clipped() // 裁剪图片以适应frame
//                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 300) // 定义图片的最小高度
////                            .frame(width: geometry.size.width, height:geometry.size.height) // 设置图片宽度和高度
//                        }
//                    }
//                }
                //            .edgesIgnoringSafeArea(.all) // 忽略安全区域，让图片能够填充整个屏幕
//            VStack {
//                Spacer() // 用于将内容向下推送的 Spacer
//                Model3D(named: "Scene", bundle: realityKitContentBundle)
//                    .padding(.bottom, 50)
//                Text("Slides")
//                Spacer() // 用于在底部创建空间的 Spacer
//            }
        }
    }
    
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
