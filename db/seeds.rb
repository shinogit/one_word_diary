# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# user
User.create!(email: 'a@a', password: 'aaaaaa', name: '1坪田 芳久', nick_name: 'つぼつぼ1', introduction: 'ツボに入れるは蟹。', is_deleted: false)
User.create!(email: 'b@b', password: 'bbbbbb', name: '2笹原 明音', nick_name: '笹食べたい2', introduction: '笹はもう飽きた。違うの食べたい。', is_deleted: false)
User.create!(email: 'c@c', password: 'cccccc', name: '3青柳 蒼依', nick_name: 'ダブルBlue3', introduction: '好きな色は碧色です。よろしくね！', is_deleted: true)
User.create!(email: 'd@d', password: 'dddddd', name: '4小川 政義', nick_name: '「政権」とります4', introduction: '1192作ろう鎌倉幕府はもう古い？', is_deleted: false)
User.create!(email: 'e@e', password: 'eeeeee', name: '5坂下 彰前', nick_name: 'さかのした5', introduction: '好きなものはゲームです!?', is_deleted: false)
User.create!(email: 'f@f', password: 'ffffff', name: '6高津 紅葉', nick_name: 'もみじ60歳6', introduction: 'ドレミファソラシド', is_deleted: false)
User.create!(email: 'aa@aa', password: 'AAAAAA', name: '7岩田 杏南', nick_name: 'がんちゃん7', introduction: 'たろうねヂもチょそラニEヌ)ｽぶグぴ5サホF>4ゲｦ;W', is_deleted: false)
User.create!(email: 'bb@bb', password: 'BBBBBB', name: '8井原 優響', nick_name: 'いのっち8', introduction: 'はなこｳ)ﾕナぎけたN4なデロピyイテﾉベ1ォのｲﾑ%ﾋ', is_deleted: false)
User.create!(email: 'cc@cc', password: 'CCCCCC', name: '9嶋田 真人', nick_name: '真実のひと9', introduction: 'やまだ,8ヌﾃ$ヰポをびﾈテｶぷｾレｭPほW5Xがダｯゼ', is_deleted: false)
User.create!(email: 'dd@dd', password: 'DDDDDD', name: '10芦田 聖', nick_name: 'まなじゃないほう10', introduction: 'たかはし;キち2ﾂぺヲゕBLGﾂくっなョぢﾖVにﾋmデｪモ', is_deleted: true)
User.create!(email: 'ee@ee', password: 'EEEEEE', name: '11阪本 幹彦', nick_name: '丈夫に育ちました11', introduction: 'すずきぅごィギ:3[ぃヲｦキスﾒぉなだ)ｧぐでEｧ_がョ', is_deleted: false)
User.create!(email: 'ff@ff', password: 'FFFFFF', name: '12梶田 充照', nick_name: 'かじかじ12', introduction: 'おちつこう', is_deleted: false)


# admin
Admin.create!(email: 'z@z', password: 'zzzzzz', name: '管理者ZZZZ')

# word
Word.create!(title: "A1のタイトル", body: "A1のひとことは考えたけど特にありませんでした。コメントください！", user_id: 1, start_time: "2020-10-05 10:00:00 +0900")
Word.create!(title: "A2のタイトル", body: "A2のつぶやき", user_id: 1, start_time: "2020-10-06 10:00:00 +0900")
Word.create!(title: "A3のタイトル", body: "A3の感想", user_id: 1, start_time: "2020-10-07 10:00:00 +0900")
Word.create!(title: "A4のタイトル", body: "A4の思い出", user_id: 1, start_time: "2020-10-08 10:00:00 +0900")
Word.create!(title: "A5のタイトル", body: "A5のなんやかんやの記録をここに記す〜", user_id: 1, start_time: "2020-10-09 10:00:00 +0900")
Word.create!(title: "A6のタイトル", body: "A6のひとこと", user_id: 1, start_time: "2020-10-10 10:00:00 +0900")
Word.create!(title: "B1のタイトル", body: "B1のひとこと", user_id: 2, start_time: "2020-10-06 10:00:00 +0900")
Word.create!(title: "B2のタイトル", body: "B2のひとこと", user_id: 2, start_time: "2020-10-07 10:00:00 +0900")
Word.create!(title: "B3のタイトル", body: "B3のひとこと", user_id: 2, start_time: "2020-10-08 10:00:00 +0900")
Word.create!(title: "C1のタイトル", body: "C1のひとこと", user_id: 3, start_time: "2020-10-05 10:00:00 +0900")
Word.create!(title: "C2のタイトル", body: "C2のひとこと", user_id: 3, start_time: "2020-10-06 10:00:00 +0900")

# comment
Comment.create!(body: "A1の自作自演のコメント", user_id: 1, word_id: 1)
Comment.create!(body: "A2のつぶやきが何か”私”気になります", user_id: 1, word_id: 2)
Comment.create!(body: "A3の感想は無味乾燥だ！", user_id: 1, word_id: 3)
Comment.create!(body: "A4のコメント", user_id: 1, word_id: 2)
Comment.create!(body: "B1のコメント", user_id: 2, word_id: 1)
Comment.create!(body: "B2のコメント", user_id: 2, word_id: 2)
Comment.create!(body: "B3のコメント", user_id: 2, word_id: 1)
Comment.create!(body: "C1のコメント", user_id: 3, word_id: 2)
Comment.create!(body: "C2のコメント", user_id: 3, word_id: 1)

# contact
Contact.create!(title: "A1の問合せタイトル", body: "A1の問合せ内容", user_id: 1, anser: "A1-〜ということでした。", anser_status: 1, created_at: "2020-10-05 10:00:00 +0900")
Contact.create!(title: "A2の問合せタイトル", body: "A2の問合せ内容", user_id: 1, anser_status: 0, created_at: "2020-10-06 10:00:00 +0900")
Contact.create!(title: "A3の問合せタイトル", body: "A3の問合せ内容", user_id: 1, anser: "A3-！", anser_status: 1, created_at: "2020-10-07 10:00:00 +0900")
Contact.create!(title: "A4の問合せタイトル", body: "A4の問合せ内容", user_id: 1, anser_status: 0, created_at: "2020-10-08 10:00:00 +0900")
Contact.create!(title: "A5の問合せタイトル", body: "A5の問合せ内容", user_id: 1, anser: "A5-問題ありませんでした", anser_status: 1, created_at: "2020-10-09 10:00:00 +0900")
Contact.create!(title: "A6の問合せタイトル", body: "A6の問合せ内容", user_id: 1, anser_status: 0, created_at: "2020-10-10 10:00:00 +0900")
Contact.create!(title: "B1の問合せタイトル", body: "B1の問合せ内容", user_id: 2, anser: "B1-禁則事項です", anser_status: 1, created_at: "2020-10-06 10:00:00 +0900")
Contact.create!(title: "B2の問合せタイトル", body: "B2の問合せ内容", user_id: 2, anser_status: 0, created_at: "2020-10-07 10:00:00 +0900")
Contact.create!(title: "B3の問合せタイトル", body: "B3の問合せ内容", user_id: 2, anser: "B3-問合せの結果、合格です。", anser_status: 1, created_at: "2020-10-08 10:00:00 +0900")
Contact.create!(title: "C1の問合せタイトル", body: "C1の問合せ内容", user_id: 3, anser_status: 0, created_at: "2020-10-05 10:00:00 +0900")
Contact.create!(title: "C2の問合せタイトル", body: "C2の問合せ内容", user_id: 3, anser: "C2-あなたは出禁です", anser_status: 1, created_at: "2020-10-06 10:00:00 +0900")
