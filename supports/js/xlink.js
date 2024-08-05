(function (document) {
  
  // open external link in new tab
  function external_new_tab() {
    for (let menu = document.getElementsByTagName("a"), cnt = 0; cnt < menu.length; cnt++) {
      let temp = menu[cnt];
      if (temp.getAttribute("href") && temp.hostname !== location.hostname) {
          temp.target = "_blank";
      }
    }
  }
  
  if (typeof document !== "undefined") {
      external_new_tab();
  }

})(document);
