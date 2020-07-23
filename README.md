# README

## アプリ
  Dance Spot
![dancespot](https://user-images.githubusercontent.com/64058494/86305952-e513b880-bc4d-11ea-8c54-70084ace24bf.jpg)
## アプリURL
  https://dance-spot.herokuapp.com/
 
    テスト投稿用ログインユーザー
    　メールアドレス  【aa@aa.aa】
    　パスワード     【aaaaaa】
    テスト確認用ログインユーザー
    　メールアドレス  【bb@bb.bb】
    　パスワード     【bbbbbb】
  
## アプリの内容
  ダンスイベントの投稿、閲覧が出来るアプリです。
  ダンスのイベントは個人で大会を開く事が多く、誰でも自由にイベント告知が出来るサービスがなかったので作成しました。
  
  ログインすればイベントの投稿が可能で、すぐ簡単にイベントの告知をする事ができます。
  また、イベントを探している方はログインしなくてもイベントの詳細を閲覧する事が可能です。
    
●　イベント投稿画面
イベントの投稿者のみ、編集と削除が出来る仕様となっています。
<img width="1063" alt="danspo投稿" src="https://user-images.githubusercontent.com/64058494/86306649-cb737080-bc4f-11ea-841b-534a9b1796b1.png">

<br>

●　イベント一覧画面
<img width="1438" alt="danspo一覧" src="https://user-images.githubusercontent.com/64058494/88258231-9f04be80-ccfa-11ea-81f7-86418064fe1f.png">

<br>

●　実装機能
<br>
  イベントの規模を分かりやすくするため、参加したいボタンを実装して、参加したいと考えている人数を可視化しました。<br>
  参加したいボタンは、ログインユーザーのみ押す事が可能で、非同期通信で実装しています。
[![Image from Gyazo](https://i.gyazo.com/96dfcafdfdc84f31b25f65f003450e5d.gif)](https://gyazo.com/96dfcafdfdc84f31b25f65f003450e5d)

<br>

## 開発環境
HTML,CSS,Ruby,Ruby,Rails,jquery,ArtText3

## 今後実装したい機能
    １　エントリー機能の実装
        DanceSpot内で、イベントにエントリーができる機能及び、エントリー状況を確認できる機能を実装したいと思っています。
        
    ２　検索機能の強化
        地方別検索、日付検索、ジャンル検索等の機能を実装したいと思っています。

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
|dancename|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :events

## favoriteテーブル
|Column|Type|Option|
|------|----|------|
|user_id|integer||
|event_id|integer||

### Association
 - belongs_to :user
 - belongs_to :event
