class TweetsController < ApplicationController
    def index
        @icons = [{text: "", class: "fab fa-twitter"},
                  {text: "ホーム", class: "fas fa-home"},
                  {text: "話題を検索", class: "fas fa-hashtag"},
                  {text: "通知", class: "far fa-bell"},
                  {text: "メッセージ", class: "far fa-envelope"},
                  {text: "ブックマーク", class: "far fa-bookmark"},
                  {text: "リスト", class: "far fa-list-alt"},
                  {text: "プロフィール", class: "far fa-user"},
                  {text: "もっと見る", class: "fas fa-info-circle"}]
    end
end
