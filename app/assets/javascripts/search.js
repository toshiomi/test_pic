$(function () {
  var search_list = $(".search_field");

  function searchTweet(tweet) {
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
          tweets.forEach(function (tweet) {
            searchTweet(tweet);
          });
        }
        else {
          searchError("検索結果がありません")
        }
      })
  });
});
