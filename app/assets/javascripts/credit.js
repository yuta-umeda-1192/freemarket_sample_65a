document.addEventListener(
  "DOMContentLoaded", e => {
    var form = $("#charge-form");
    Payjp.setPublicKey("pk_test_ed97086a2bbe7bd7aaeb41fb");
    //まずはテスト鍵をセットする↑
    $("#token_submit").on("click",function(e){
      e.preventDefault();
    //↑ここでrailsの処理を止めることでjsの処理を行う
      var card = {
        number: $("#card_number").val(),
        exp_month: $(".input-month").val(),
        exp_year: $(".input-year").val(),
        cvc: $(".input-number2").val()
      };
     //↑Pay.jpに登録するデータを準備する
      Payjp.createToken(card,function(status,response){
     //↑先ほどのcard情報がトークンという暗号化したものとして返ってくる
        form.find("input[type=submit]").prop("disabled", true);
        if(status == 200){//←うまくいった場合200になるので
          $("#card_number").removeAttr("name");
          $(".input_month").removeAttr("name");
          $(".input_year").removeAttr("name");
          $(".input-number2").removeAttr("name");
         //↑このremoveAttr("name")はデータを保持しないように消している
          var payjphtml = `<input type="hidden" name="payjpToken" value=${response.id}>`
          form.append(payjphtml);
          //↑これはdbにトークンを保存するのでjsで作ったトークンをセットしてる
          document.inputForm.submit();
         //↑そしてここでsubmit！！これでrailsのアクションにいく！もちろん上でトークンをセットしているのでparamsの中には{payjpToken="トークン"}という情報が入っている
        }else{
          alert("カード情報が正しくありません。");
        }
      });
    });
  }
)