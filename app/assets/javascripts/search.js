$(function () {
  $(".search_field").on("keyup", function () {
    var input = $(".search_field").val();
    $.ajax({
      url: "/tweets/search",
      type: "GET",
      data: { keyword: input },
      dataType: "json"
    })
      .done(function (tweets) {

      })
  });
});
