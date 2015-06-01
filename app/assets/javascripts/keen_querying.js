var client = new Keen({
  projectId: "5568a68b672e6c4056285b3c",
  writeKey: "873551cdcd987423898f83028c92f56f8bb6e7214ef5750df4dc90f67691102efd34a3c0a62e195930ca04fef0309879ad2ddd42429638c1cbffb0b2fc249ee8363cbadcecc722d8bee8f82e5309ce6e9b25b84b281b813f6ff305bc690932504faeedffa10e0f549e9f6651c4616dd9",
  readKey: "e6acfa98d0d4f66197a428cce90198d203939ff120e7126d01bbdef58b643466677c2bbe518de487a3888f1f1860e83051cf2b359c6617b8ac8d2e3e01a2d064d5862ec97a17756e40188f050536989e016d6842c96a081328234cb312455a8d1632358f0f908198d455512328b62155"
});

Keen.ready(function(){

  // Create a query instance
  var count = new Keen.Query("count", {
    eventCollection: "pageView",
    timeframe: "this_7_days"
  });

  // Send query
  client.run(count, function(err, res){
    if (err) {
      console.log("401 Error")
    }
    else {
      console.log("200 OK")
    }
  });

  client.draw(count, document.getElementById("chart-wrapper"), {
    chartType: "metric",
    title: "Pageviews (7 Days)",
    colors: ["#3CB36F"]
  });

});
