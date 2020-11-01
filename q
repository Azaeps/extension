checkStream();

setInterval(function(){
  checkStream();
}, 10000);

function checkStream(){
  var xhr = new XMLHttpRequest();
  xhr.open("GET", "https://api.twitch.tv/kraken/streams/Z_Trahm?client_id=djjhqarhxc7cl8y8ckmvoa6lwdet7n", true);
  xhr.onreadystatechange = function(){
    if(xhr.readyState == 4){
      var data = JSON.parse(xhr.responseText);
      if(data["stream"] == null){
        $("#info").html("Le stream n'est pas actif");
        chrome.browserAction.setIcon({path: "Zoff.png"})
      }else{
        $("#info").html("Le stream est actif");
        chrome.browserAction.setIcon({path: "Zon.png"})
      }
    }
  }
  xhr.send();
}
