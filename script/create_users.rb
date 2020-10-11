# $ bin/rails runner script/create_users.rb   をnginxサーバ内で実行することで初期データを投入できる

# 初期ユーザー
User.create!(email: 'a@a', password: 'aaaaaa', name: 'テスト名前a', nick_name: 'てすたーA', introduction: 'テスト名前aです。ニックネームはてすたーAです。4649!', is_deleted: false)
User.create!(email: 'b@b', password: 'bbbbbb', name: 'テスト名前bb', nick_name: 'てすたーBB', introduction: 'テスト名前bbです。ニックネームはてすたーBBです。4645?!', is_deleted: false)
User.create!(email: 'c@c', password: 'cccccc', name: 'テスト名前ccc', nick_name: 'てすたーCCC', introduction: 'テスト名前cccです。ニックネームはてすたーCCCです。4645!?!', is_deleted: false)
User.create!(email: 'd@d', password: 'dddddd', name: 'テスト名前dddd', nick_name: 'てすたーDDDD', introduction: 'テスト名前ddddです。ニックネームはてすたーDDDDです。今日は何曜日？', is_deleted: false)
User.create!(email: 'e@e', password: 'eeeeee', name: 'テスト名前eeeee', nick_name: 'てすたーEEEEE', introduction: 'テスト名前eeeeeです。ニックネームはてすたーEEEEEです。こんばんは', is_deleted: false)
User.create!(email: 'f@f', password: 'ffffff', name: 'テスト名前ffffff', nick_name: 'てすたーFFFFF', introduction: 'テスト名前ffffffです。ニックネームはてすたーFFFFFです。よろしくお願いします！', is_deleted: false)

# 初期管理者
Admin.create!(email: 'z@z', password: 'zzzzzz', name: '管理者ZZZZ')
