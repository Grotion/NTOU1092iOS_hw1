//
//  QuestionData.swift
//  ntou1092iOS_hw1
//
//  Created by Shaun Ku on 2021/3/4.
//

import Foundation

struct QuestionDataType: Codable
{
    var Num: Int
    var title: String
    var question: String
    var answer: String
}

var questions: [QuestionDataType] =
[
    //template:QuestionDataType(Num: 0, title: "", question: "", answer: ""),
    
    //https://www.kingnet.com.tw/news/single?newId=38994
    QuestionDataType(Num: 1, title: "", question: "為什麽蠶寶寶很有錢?", answer: "因為它會結繭(節儉)"),
    //QuestionDataType(Num: 2, title: "", question: "為什麽小白兔不嫁給斑馬呢?", answer: "因為兔媽媽說紋身不是好孩子"),
    //QuestionDataType(Num: 3, title: "", question: "台灣什麽時候可以統一?", answer: "買方便麵的時候(統一方便麵)"),
    QuestionDataType(Num: 4, title: "", question: "猴子不喜歡什麽線?", answer: "平行線(因為沒有相交<香蕉>)"),
    QuestionDataType(Num: 5, title: "", question: "巧克力和番茄打架,為什麽是巧克力贏?", answer: "因為巧克力棒嘛"),
    QuestionDataType(Num: 6, title: "", question: "鲨魚吃了綠豆會怎麽樣?", answer: "變成了綠豆沙"),
    QuestionDataType(Num: 7, title: "", question: "火柴燒起來後進了醫院,變成了什麽?", answer: "棉簽(棉花棒)"),
    //QuestionDataType(Num: 8, title: "", question: "林黛玉是怎麽死的呢?", answer: "摔死的(天上掉下個林妹妹)"),
    
    //https://ytliu0.pixnet.net/blog/post/229260341-笑話集錦---003---冷笑話%7C猜謎
    QuestionDataType(Num: 9, title: "", question: "小黃瓜跳樓自殺變什麼", answer: "茄子"),
    QuestionDataType(Num: 10, title: "", question: "水裡沒人，猜一種水果", answer: "西瓜Watermelon(水裡沒人)"),
    QuestionDataType(Num: 11, title: "", question: "哪種動物最官腔", answer: "雞。因為…機(雞)關槍(官腔)"),
    //QuestionDataType(Num: 12, title: "", question: "你看過電影藍波嗎？那你知道「誰的大便最濃嗎？」", answer: "席維斯「屎特濃」"),
    QuestionDataType(Num: 13, title: "", question: "鬍子是乾淨的？還是髒的？", answer: "髒的。 因為鬍鬚張…"),
    QuestionDataType(Num: 14, title: "", question: "為什麼瞎子都很會約砲？", answer: "因為他們都用「聽的」(Tinder)"),
    QuestionDataType(Num: 15, title: "", question: "人在什時候會想要喝汽水？", answer: "孤單。當你孤單你會想起誰(汽水)"),
    QuestionDataType(Num: 16, title: "", question: "你知道念什麼系，最適合賣壽司嗎？", answer: "美術系(台語)"),
    QuestionDataType(Num: 17, title: "", question: "為什麼結婚都要選個好日子呢？", answer: "因為結婚後就沒有好日子了"),
    //QuestionDataType(Num: 18, title: "", question: "為什麼騙錢犯法騙感情卻不犯法？", answer: "因為感情不值錢"),
    //QuestionDataType(Num: 19, title: "", question: "為什麼人們害怕蜘蛛，卻不害怕螃蟹呢？", answer: "因為「網上」都是壞人"),
    QuestionDataType(Num: 20, title: "", question: "男生發誓不看美女。但忍不住時該怎麼辦呢？", answer: "看完之後，重新再發誓"),
    QuestionDataType(Num: 21, title: "", question: "什麼樣的男人既安份又不花心？", answer: "植物人"),
    //QuestionDataType(Num: 22, title: "", question: "你覺得家裡有什麼電器才算是有錢人？", answer: "ATM"),
    
    //https://arielhsu.tw/cold-joke-guessing3/
    QuestionDataType(Num: 22, title: "", question: "小白很像他哥哥，知道為什麽嗎?(猜一成語)", answer: "真像大白"),
    QuestionDataType(Num: 23, title: "", question: "透明的劍是什麽劍", answer: "看不見(劍)"),
    QuestionDataType(Num: 24, title: "", question: "怎樣使麻雀安靜下來？", answer: "壓它一下(鴉雀無聲)"),
    QuestionDataType(Num: 25, title: "", question: "小明和小華到海邊比賽說笑話，說完笑話後，他們就死掉了，為什麽？", answer: "因為海嘯(笑)了"),
    QuestionDataType(Num: 26, title: "", question: "有一個胖子從高樓跳下，結果怎麽樣了？", answer: "成了死胖子"),
    QuestionDataType(Num: 27, title: "", question: "有兩個人掉到陷阱？死的人叫死人，活人叫什麽？", answer: "救命"),
    QuestionDataType(Num: 28, title: "", question: "大象、老虎、獅子哪一個皮膚最不好？", answer: "橡皮擦(象皮差)"),
    QuestionDataType(Num: 29, title: "", question: "甲、乙、丙、丁、戊、己、庚、辛，哪一個字最酷？", answer: "丁(丁字褲)"),
    QuestionDataType(Num: 30, title: "", question: "有一個白癡坐飛機，把飛機上的馬桶拆下來往外丟，猜為什麽？", answer: "因為他是白癡"),
    QuestionDataType(Num: 31, title: "", question: "一顆心值多少錢？", answer: "一億(一心一意)"),
    QuestionDataType(Num: 32, title: "", question: "蚊子不叮哪一種動物？", answer: "不叮狗(布丁狗)"),
    QuestionDataType(Num: 33, title: "", question: "小明踩到大便，為何沒有弄髒鞋子？", answer: "因為他光著腳丫，沒穿鞋子"),
    QuestionDataType(Num: 34, title: "", question: "愛是什麼？", answer: "基摩人(愛斯基摩人)"),
    QuestionDataType(Num: 35, title: "", question: "芭樂和鳳梨比賽，芭樂贏了(猜一食物)", answer: "鳳梨酥"),
    QuestionDataType(Num: 36, title: "", question: "有一對連體嬰的姊妹，一個叫瑪莉，另一個叫什麼？", answer: "夢露，瑪麗蓮夢露"),
    QuestionDataType(Num: 37, title: "", question: "誰最怕公主？", answer: "杜蘭，因為杜蘭朵公主"),
    QuestionDataType(Num: 38, title: "", question: "請問誰生了牛奶", answer: "花(花生牛奶)"),
    QuestionDataType(Num: 39, title: "", question: "少了一本書(猜一成語)", answer: "缺一不可(缺一BOOK)"),
    QuestionDataType(Num: 40, title: "", question: "第十一本書(猜四個字)", answer: "不可思議(Book11)"),
    
]
