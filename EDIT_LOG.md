
3/15変更点

1. Gemfileに"gem 'devise'"を追加
2. Dockerfileを編集
3. サイトに従ってcontrollerを３つ追加
4. web_app_db1:27017をdb:27017に書き換えた


#### Gemfileに"gem 'devise'"を追加
[参考：gem Deviseについて。](https://launchschool.com/blog/how-to-use-devise-in-rails-for-authentication)
rails g devise:installまで行った。
APIサーバにおいてviewが必要ないので、
以降は行なっていない。

####Dockerfileを編集

```Dockerfile
10 WORKDIR /tmp
11 ADD ./supapp/Gemfile Gemfile
12 ADD ./supapp/Gemfile.lock Gemfile.lock
13 RUN bundle install --jobs=4 --system
```

これによって、Gemfileを追加していない時の`Docker build .`をした時にbundle installがキャッシュされて速度が改善される。

####サイトに従ってcontrollerを３つ追加
app/controller/api/v1/api_controller.rb
app/controller/api/v1/player_controller.rb
app/controller/api/v1/records_controller.rb

[参考記事:railsでRESTfulなAPIサーバを作るベストプラクティス](https://www.airpair.com/ruby-on-rails/posts/building-a-restful-api-in-a-rails-application)
この記事を参考にバージョン管理ができるようにapiコントローラを切り分けました。ただし、現存の様々なコントローラはまだ残っています。
ルーティングはまだやってません。

####web_app_db1:27017をdb:27017に書き換えた

util/insert_demodata.rbとconfig/mongoid.yml内のdb場所について、書き換え。
web_app_db1というアプリのディレクトリ名に依存する（docker-compose up時にコンテナがディレクトリ名で作られるため）という問題を解消。これでgit clone時にディレクトリ名を変えても大丈夫。


3/11

変更点
1. react-rails gemの追加
2. Dockerfileに　bundle install --system追加（要学習）
3. rails g react:installの実行
4. app/assetsの下に色々できた。
.
├── application.js
├── components
└── components.js

5. configの書き換え

```config/environments/production
WebApp::Application.configure do
  config.react.addons = true
  end
  ```

  ```config/environments/development
  WebApp::Application.configure do
    config.react.variant = :development
	end

```

	参照：[react-rails](https://github.com/reactjs/react-rails))


