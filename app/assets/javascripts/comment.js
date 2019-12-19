$(function () {
  function buildHTML(comment) {
    var html = `<span>
                  ${comment.user_name}:${comment.text}
                </span>`
    return html;
  }
  $('#new_comment').on('submit', function (e) {
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
      .done(function (data) {
        var html = buildHTML(data);
        $('.comment_box').append(html);
        $('.comment_area').val('');
        $('.form_submit').prop('disabled', false);
      })
      .fail(function () {
        alert('エラーが発生しました');
      });
  });
})
