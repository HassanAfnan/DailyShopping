var scrollUp = document.getElementsByClassName('btnScrollToTop')[0];

  scrollUp.onclick = function(){
    window.scrollTo({
      top: 0,
      left: 0,
      behavior: "smooth"
    });

  }