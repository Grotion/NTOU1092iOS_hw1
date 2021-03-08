//
//  ContentView.swift
//  ntou1092iOS_hw1
//
//  Created by Shaun Ku on 2021/3/3.
//

import SwiftUI

struct ContentView: View
{
    @State private var questionCount:Int = 0
    @State private var answerToShow:String = ""
    @State private var answerShowed:Bool = false
    @State private var newGame:Bool = true
    init(){questions.shuffle()}
    func hideAnswer()
    {
        self.answerShowed = false
        self.answerToShow = ""
    }
    var body: some View
    {
        GeometryReader
        {
            geometry in
            ZStack
            {
                Image("background")
                .resizable()
                .opacity(0.3)
                .frame(width: geometry.size.width)
                .scaledToFit()
                .edgesIgnoringSafeArea(.all)
                VStack
                {
                    Text("Guess What !")
                    .font(Font.custom("Snell Roundhand", size: 45))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 100/255, green: 149/255, blue: 237/255))
                    .multilineTextAlignment(.center)
                    .frame(width:geometry.size.width * 4 / 5, height: 70)
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing:0))
                    Spacer()
                    Text("© 2021 Grotion")
                }
                VStack
                {
                    VStack(alignment: .leading)
                    {
                        HStack
                        {
                            Group
                            {
                                Text("Q")
                                Text(String(self.questionCount+1))
                                Text(":")
                                Text(questions[self.questionCount].title)
                            }
                            .padding(0)
                            .font(Font.custom("TimesNewRomanPSMT", size: 30))
                            .foregroundColor(Color.red)

                        }
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
                        //Text(String(questions[self.questionCount].Num))
                        Text(questions[self.questionCount].question)
                        .font(Font.custom("TimesNewRomanPSMT", size: 20))
                        .foregroundColor(Color.black)
                        .padding(10)
                        Spacer()
                        HStack
                        {
                            Button(action:
                            {
                                self.answerShowed = true
                                self.answerToShow = questions[questionCount].answer
                            }, label:
                            {
                                Text("Show Answer !")
                                .font(Font.custom("TimesNewRomanPSMT", size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 123/255, green: 104/255, blue: 238/255))
                                .multilineTextAlignment(.center)
                                .frame(width:geometry.size.width * 1 / 3, height: 45)
                                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color(red: 123/255, green: 104/255, blue: 238/255), style: StrokeStyle(lineWidth: 2)))
                                .opacity(self.answerShowed ? 0.5 : 1)
                            })
                            .disabled(self.answerShowed)
                            Spacer()
                            Text(self.answerToShow)
                            .font(Font.custom("TimesNewRomanPSMT", size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        }
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                    }
                    .frame(width:geometry.size.width * 8 / 9, height: 400)
                    .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.white).opacity(0.3))
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, style: StrokeStyle(lineWidth: 2)))
                    HStack
                    {
                        Button(action:
                        {
                            hideAnswer()
                            self.questionCount-=1
                                    
                        },label:
                        {
                            Text("Previous")
                            .font(Font.custom("TimesNewRomanPSMT", size: 30))
                            .fontWeight(.bold)
                                .foregroundColor(Color.red)
                            .multilineTextAlignment(.center)
                            .frame(width:geometry.size.width * 3 / 7, height: 60)
                            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.white))
                                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.red, style: StrokeStyle(lineWidth: 2)))
                            .opacity(self.questionCount==0 ? 0.5 : 1)
                        })
                        .disabled(self.questionCount==0)
                        Button(action:
                        {
                            hideAnswer()
                            self.questionCount+=1
                        }, label:
                        {
                            Text("Next")
                            .font(Font.custom("TimesNewRomanPSMT", size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(Color.green)
                            .multilineTextAlignment(.center)
                            .frame(width:geometry.size.width * 3 / 7, height: 60)
                            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.white))
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.green, style: StrokeStyle(lineWidth: 2)))
                            .opacity(self.questionCount==9 ? 0.5 : 1)
                        })
                        .disabled(self.questionCount==9)
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                    HStack
                    {
                        Button(action:{
                            self.questionCount = 1
                            questions.shuffle()
                            hideAnswer()
                            self.newGame.toggle()
                            self.questionCount = 0
                        }, label:
                        {
                            Text("New Game")
                            .font(Font.custom("TimesNewRomanPSMT", size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width:geometry.size.width * 3 / 7, height: 60)
                            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(red: 100/255, green: 149/255, blue: 237/255)))
                        })
                        Button(action:
                        {
                            hideAnswer()
                            self.questionCount=0
                        }, label:
                        {
                            Text("Play Again !")
                            .font(Font.custom("TimesNewRomanPSMT", size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width:geometry.size.width * 3 / 7, height: 60)
                            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(red: 218/255, green: 112/255, blue: 214/255)))
                            .opacity(self.questionCount<9 ? 0.5 : 1)
                        })
                        .disabled(self.questionCount<9)
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
