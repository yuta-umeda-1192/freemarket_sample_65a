window.addEventListener("turbolinks:load", function() {
  let tab1 = $(".mypage-contents1__switchtabs__tab");
  tabsAry1 = Array.prototype.slice.call(tab1);

  function tabSwitch() {
    $(".mypage-contents1__switchtabs__tab.active")[0].classList.remove("active");
 
    this.classList.add("active");
    $(".mypage-contents1__contents__content.show")[0].classList.remove("show");
    const index1 = tabsAry1.indexOf(this);

    $(".mypage-contents1__contents__content")[index1].classList.add("show");
  }

  tabsAry1.forEach(function(value) {
    value.addEventListener("click", tabSwitch);
  });
});

window.addEventListener("turbolinks:load", function() {
  let tab2 = $(".mypage-contents2__switchtabs__tab");
  tabsAry2 = Array.prototype.slice.call(tab2);

  function tabSwitch() {
    $(".mypage-contents2__switchtabs__tab.active")[0].classList.remove("active");

    this.classList.add("active");
  
    $(".mypage-contents2__contents__content.show")[0].classList.remove("show");
    const index2 = tabsAry2.indexOf(this);

    $(".mypage-contents2__contents__content")[index2].classList.add("show");
  }

  tabsAry2.forEach(function(value) {
    value.addEventListener("click", tabSwitch);
  });
});