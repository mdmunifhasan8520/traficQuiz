$(document).ready(function(){
    var body = $('#body');
    var text= $('.text');

    var path = $('#inner path')

    tl = new TimelineMax({repeat:-1});
/*
tl

    .fromTo('#morning', 1, {
	autoAlpha:0} , {
	autoAlpha:1})
.fromTo('#noon', 1, {
	autoAlpha:0} , {
	autoAlpha:1},0)
.fromTo('#night', 1, {
	autoAlpha:0} , {
	autoAlpha:1,visibility:true})
.staggerFromTo('.treedraw', 3, {strokeDasharray:4000,strokeDashoffset:5000}, {strokeDasharray:5000,strokeDashoffset:10000}, 0.05,"-=3")
*/
tl

.fromTo('#outer_border', 2, {
    strokeDasharray:2000,strokeDashoffset:2000} , {
    strokeDasharray:2000,strokeDashoffset:0})

.fromTo('#inner_border', 2, {
    strokeDasharray:2000,strokeDashoffset:2000} , {
    strokeDasharray:2000,strokeDashoffset:0})
.fromTo('#sign', 1, {
    autoAlpha:0,y:100} , {
    autoAlpha:1,y:80, ease:Bounce.easeOut})
.to('#inner_border', 0.5, {
    fill:'red'})
.to('#outer_border', 1, {
    fill:'red'})







                                        /*
                    .fromTo('#yellow_light', 2, {
                                        autoAlpha:0.5} , {
                                        autoAlpha:1})
                                        .fromTo('#yellow_light', 2, {
                                                            autoAlpha:1} , {
                                                            autoAlpha:0.5})
                                        .fromTo('#red_light', 2, {
                                                            autoAlpha:0.5,fill:"black"} , {
                                                            autoAlpha:1,fill:"red"})
                                                            .fromTo('#red_light', 2, {
                                                                                autoAlpha:1} , {
                                                                            .fromTo('#green_light', 2, {
                                                                                                    autoAlpha:0.5} , {
                                                                                                    autoAlpha:1})*/



                    /*
.fromTo('#path_1', 0.5, {
                    strokeDasharray:2000,strokeDashoffset:2000} , {
                    strokeDasharray:2000,strokeDashoffset:0})
.fromTo('#path_2', 0.5, {
                    strokeDasharray:2000,strokeDashoffset:2000} , {
                    strokeDasharray:2000,strokeDashoffset:0})
.fromTo('#path_3', 0.5, {
        strokeDasharray:2000,strokeDashoffset:2000} , {
        strokeDasharray:2000,strokeDashoffset:0})
.fromTo('#path_4', 0.5, {
                strokeDasharray:2000,strokeDashoffset:2000} , {
                strokeDasharray:2000,strokeDashoffset:0})
.fromTo('#path_5', 0.5, {
              strokeDasharray:2000,strokeDashoffset:2000} , {
              strokeDasharray:2000,strokeDashoffset:0})
.fromTo('#path_6', 0.5, {
                  strokeDasharray:2000,strokeDashoffset:2000} , {
                  strokeDasharray:2000,strokeDashoffset:0})
.fromTo('#path_7', 0.5, {
              strokeDasharray:2000,strokeDashoffset:2000} , {
              strokeDasharray:2000,strokeDashoffset:0})
.fromTo('#path_8', 0.5, {
                  strokeDasharray:2000,strokeDashoffset:2000} , {
                  strokeDasharray:2000,strokeDashoffset:0})
*/

/*
                    fill:'#fff'})

.fromTo('#arrow_Top_Right', 3, {
                      strokeDasharray:500,strokeDashoffset:500} , {
                      strokeDasharray:1500,strokeDashoffset:0},'-=1')
  .fromTo('#arrow_Middle_Left', 3, {
                      strokeDasharray:500,strokeDashoffset:500} , {
                      strokeDasharray:1500,strokeDashoffset:50},'-=1')
  .fromTo('#arrow_Botton_Right', 3, {
                      strokeDasharray:500,strokeDashoffset:500} , {
                      strokeDasharray:1500,strokeDashoffset:50},'-=1')
  .to('#arrow_Top_Right', 0.5, {
                      fill:'#000'})
  .to('#arrow_Middle_Left', 0.5, {
                      fill:'#000'})
  .to('#arrow_Botton_Right', 0.5, {
                      fill:'#000'})
  .fromTo('#outerBoundary', 2, {
                        strokeDasharray:2000,strokeDashoffset:2000} , {
                        strokeDasharray:2000,strokeDashoffset:0})
.to('#outerBoundary', 2, {
                      fill:'#FF6347'})
*/
                      /*
    tl.fromTo('#arrow_Top_Left path', 3, {
    	strokeDasharray:500,strokeDashoffset:500} , {
    	strokeDasharray:1500,strokeDashoffset:50})*/
    /*.fromTo('#path844', 1, {
                          autoAlpha:0} , {
                          autoAlpha:1})*/
/*
.fromTo('#tree path', 3, {
	strokeDasharray:4000,strokeDashoffset:5000} , {
	strokeDasharray:5000,strokeDashoffset:10000},'-=4')
    */
                  /*
 .fromTo('#morning', 0.01, {
	autoAlpha:1} , {
	autoAlpha:0})

.fromTo('#cloud path', 3, {
	strokeDasharray:500,strokeDashoffset:500} , {
	strokeDasharray:1500,strokeDashoffset:50},"out")
.fromTo('#noon', 1, {
	autoAlpha:1} , {
	autoAlpha:0})

.to('#cloudcolor', 0.01, {
    fill:'#5fbcd3'},"out+=0.5")
.to('#tree path', 1, {
    stroke:'#fff'},"out+=0.5")
.to('#stone1', 1, {
    fill:'#483e37'},"out+=1")
.to('#cloud path', 3, {
    x:-1000},"out+=0.5")



.staggerFromTo('.raindrop', 1, {y:-100,opacity:0}, {opacity:1,y:600}, 0.02,"out+=1")

.fromTo('#grass1 path', 3, {
	strokeDasharray:500,strokeDashoffset:500} , {
	strokeDasharray:1500,strokeDashoffset:50},"grass-=2")
.fromTo('#grass2 path', 3, {
	strokeDasharray:500,strokeDashoffset:500} , {
	strokeDasharray:1500,strokeDashoffset:50},"grass-=1.8")
.fromTo('#grass3 path', 3, {
	strokeDasharray:500,strokeDashoffset:500} , {
	strokeDasharray:1500,strokeDashoffset:50},"grass-=1.8")
.fromTo('#grass4 path', 3, {
	strokeDasharray:500,strokeDashoffset:500} , {
	strokeDasharray:1500,strokeDashoffset:50},"grass-=1.8")
.to('.grass path', 0.01, {
    fill:'#008000'},"grass-=1.5")
.fromTo('.house path', 5, {
	strokeDasharray:500,strokeDashoffset:500} , {
	strokeDasharray:1500,strokeDashoffset:50},"house-=2.5")
.fromTo('#road1 path', 2, {
	strokeDasharray:700,strokeDashoffset:700} , {
	strokeDasharray:700,strokeDashoffset:0},"grass-=.5")
.fromTo('#road2 path', 2, {
	strokeDasharray:700,strokeDashoffset:700} , {
	strokeDasharray:700,strokeDashoffset:0},"grass-=.5")
.to('.grass', 1, {
    transformOrigin:"50% 50%",scale:0.3,x:-150,y:-100},"grass+=.5")
.fromTo('#bananatree path', 5, {
	strokeDasharray:4500,strokeDashoffset:4500} , {
	strokeDasharray:4500,strokeDashoffset:1000},"grass+=1")
.fromTo('#bird1 path', 5, {
	strokeDasharray:4500,strokeDashoffset:4500} , {
	strokeDasharray:4500,strokeDashoffset:1000},"grass+=1.5")

.fromTo('#bird1', 1, {
	x:-200,y:00} , {
	x:100,y:-300},"grass+=2")

  .fromTo('#day10', 1, {
	autoAlpha:0} , {
	autoAlpha:1},"grass+=2")


  .fromTo('#night', 1, {
	autoAlpha:1} , {
	autoAlpha:0},"grass+=2")

.to('#banna_clay', 0.01, {
    fill:'#784421'},"grass+=2")
.to('#bananna_tree_body', 0.01, {
    fill:'#5aa02c'},"grass+=2.5")
.to('#bananna_leaf path', 0.01, {
    fill:'#44aa00'},"grass+=2.5")
.fromTo('#car1', 1, {
	autoAlpha:0} , {
	autoAlpha:1},"car-=4")
.fromTo('#car1', 3, {
	x:0,y:0} , {
	x:-1000,y:-200,rotation:20,scale:0.8},"car-=4")
.fromTo('#motorroad path', 2, {
	strokeDasharray:450,strokeDashoffset:450} , {
	strokeDasharray:450,strokeDashoffset:100},"car-=4")
.fromTo('#motorroad2 path', 2, {
	strokeDasharray:450,strokeDashoffset:450} , {
	strokeDasharray:450,strokeDashoffset:100},"car-=3.5")
.fromTo('#motorroad3 path', 2, {
	strokeDasharray:450,strokeDashoffset:450} , {
	strokeDasharray:450,strokeDashoffset:100},"car-=3")
*/



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
