$(document).ready(function(){
                 // var body = $('#body');
                 // var text= $('.text');
                  
                  var path = $('#inner path')
                  
                  tl = new TimelineMax({repeat:-1});

                  tl
                 
                  .to(path, 1, {
                      fill:"black"})
                  .fromTo('#path837', 1, {
                          strokeDasharray:2000,strokeDashoffset:2000} , {
                          strokeDasharray:2000,strokeDashoffset:0,fill:"black"})
                  .fromTo('#inner', 1, {
                          autoAlpha:0} , {
                          autoAlpha:1})
                  
                  .to('#green_light', 0.5, {
                      autoAlpha:1})
                  .fromTo('#green_light', 1, {
                          autoAlpha:1} , {
                          autoAlpha:0.3})
                  .fromTo('#yellow_light', 1, {
                          autoAlpha:0.3} , {
                          autoAlpha:1})
                  .to('#yellow_light', 0.5, {
                      autoAlpha:0.3})
                  .fromTo('#red_light', 2, {
                          autoAlpha:0.3} , {
                          autoAlpha:1})
                  .to('#yellow_light', 0.5, {
                      autoAlpha:0.3})
                  .to('#red_light', 0.5, {
                      autoAlpha:0.3})
                  .to('#green_light', 2, {
                      autoAlpha:1})
                  
  
                  
                  .timeScale(0.5);
                  
                  
                  var isPaused = false;
                  $("body").on("click", function(){
                               if(isPaused){
                               tl.resume();
                               isPaused = false;
                               return;
                               }
                               isPaused = true;
                               tl.pause();
                               })
                  
                  
                  
                  })(jQuery);


