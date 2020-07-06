# README

## アプリ
  Dance Spot
![dancespot](https://user-images.githubusercontent.com/64058494/86305952-e513b880-bc4d-11ea-8c54-70084ace24bf.jpg)
## アプリURL
  https://dance-spot.herokuapp.com/
 
    テスト投稿用ユーザー
    メールアドレス  【aa@aa.aa】
    パスワード     【aaaaaa】
  
## アプリの内容
  ダンスイベントの投稿、閲覧が出来るアプリです。
  ダンスのイベントは個人で大会を開く事が多く、誰でも自由にイベント告知が出来るサービスがなかったので作成しました。
  
  ログインすればイベントの投稿が可能で、すぐ簡単にイベントの告知をする事ができます。
  また、イベントを探している方はログインしなくてもイベントの詳細を閲覧する事が可能です。
    
●　イベント投稿画面
<img width="1063" alt="danspo投稿" src="https://user-images.githubusercontent.com/64058494/86306649-cb737080-bc4f-11ea-841b-534a9b1796b1.png">

●　イベント一覧画面
<img width="1326" alt="danspo一覧" src="https://user-images.githubusercontent.com/64058494/86306459-49834780-bc4f-11ea-8529-541a9946d530.png">

## 開発環境
HTML,CSS,Ruby,Ruby,Rails,ArtText3

## 今後実装したい機能
　閲覧ユーザーがDanceSpot内で、イベントエントリーができる機能を実装していきたい。


## DB設計
## genresテーブル

|Column|Type|Option|
|------|----|------|
|name|string|null: false|

### Association
- has_many :events

## eventsテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|address|string|null: false|
|content|text|null: false|
|day|date|null: false|
|image|string||

### Association
- belongs_to :genre
- belongs_to :user

## usersテーブル
|Column|Type|Option|
|------|----|------|
|dancename|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :events
