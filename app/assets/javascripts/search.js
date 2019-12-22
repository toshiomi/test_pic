$(function () {
  var search_list = $(".tweet_main");

  function searchedTweet(hikisuu) {
    var CurrentUserBtn = hikisuu.user_id == hikisuu.current_user_id ?
      `<button class='tweet_btn'>
                          <a rel="nofollow" data-method="delete" href="/tweets/${hikisuu.id}">削除</a>
                        </button>
                        <button class='tweet_btn'>
                          <a href="/tweets/${hikisuu.id}/edit">編集</a>
                        </button>` : "";

    var images = hikisuu.image == "" ?
      "" : `<img class="tweet_image" src="${hikisuu.image}" width="400" height="300" />
                `;

    var html = `<div class="tweet_box">
    <i class="fa fa-heart log_out_heart"></i>
                  ${hikisuu.like_counts}
                  <button class='tweet_btn'>
                    <a data-method="get" href="/tweets/${hikisuu.id}">詳細</a>
                  </button>
                  ${CurrentUserBtn}
                  <span class='tweet_text'>${hikisuu.name}</span>
                  ${images}
                  <span class='tweet_text'>${hikisuu.text}</span>
                  <span class='tweet_text'>${hikisuu.personality}</span>
                  <span class='tweet_text'>[努力値] H:${hikisuu.h} A:${hikisuu.a} B:${hikisuu.b} C:${hikisuu.c} D:${hikisuu.d} S:${hikisuu.s}</span>
                  <span class='tweet_name'>${hikisuu.user_name}</span>
                  </div>`
    search_list.append(html);
  }

  function searchError(message) {
    var html = `<div class='tweet_box'>${message}</div>`
    search_list.append(html);
  }

  $(".search_field").on("keyup", function () {
    var input = $(".search_field").val();
    $.ajax({
      url: "/tweets/search",
      type: "GET",
      data: { keyword: input },
      dataType: "json"
    })
      .done(function (tweets) {
        search_list.empty();
        if (tweets.length !== 0) {
          tweets.forEach(function (hikisuu) {
            searchedTweet(hikisuu);
          });
        }
        else {
          searchError("検索結果がありません")
        }
      })
  });
});
