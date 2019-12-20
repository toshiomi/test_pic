$(function () {
  var search_list = $(".search_field");

  function checkCurrentUserAndBuildHtml(tweet) {
    if (tweet.user_id == tweet.current_user_id) {

    }
  }

  function checkLikeBuildHtml(tweet) {
    if
  }

  function searchedTweet(hikisuu) {
    var html = `<div class='tweet_box'>
                ${checkCurrentUserAndBuildHtml(hikisuu)}
                  ${hikisuu.like_counts}
                <button class='tweet_btn'>
                  <a data-method="get" href="/tweets/${id}">詳細</a>
                </button>
                <button class='tweet_btn'>
                  <a rel="nofollow" data-method="delete" href="/tweets/${id}">削除</a>
                </button>
                <button class='tweet_btn'>
                <a href="/tweets/12/edit">編集</a>
                </button>
                <span class='tweet_text'>ガブリアス</span>
                <span class='tweet_text'></span>
                <span class='tweet_text'>いじっぱり(A↑C↓)</span>
                <span class='tweet_text'>[努力値] H:0 A:0 B:0 C:0 D:0 S:0</span>
                
                <span class='tweet_name'>test</span>
              </div>`
  }

  function searchError(message) {
    var html = `<div class='name'>${message}</div>`
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
