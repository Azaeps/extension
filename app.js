var xhr = new XMLHttpRequest();
xhr.open("GET", "https://api.twitch.tv/kraken/streams/ZedLRS?client_id=djjhqarhxc7cl8y8ckmvoa6lwdet7n", true);
xhr.onreadystatechange = function(){
  if(xhr.readyState == 4){
    var data = JSON.parse(xhr.responseText);
    if(data["stream"] == null){
      $("#info").html("Le stream n'est pas actif");
    }else{
      $("#info").html("Le stream est actif");
    }
  }
}
xhr.send();
