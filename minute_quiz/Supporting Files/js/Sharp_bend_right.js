$(document).ready(function(){
    var body = $('#body');
    var text= $('.text');

    var path = $('#inner path')

    tl = new TimelineMax({repeat:-1});

tl
.fromTo('#sign', 1, {
scale:0,x:-20} , {
scale:1,x:0,ease:Elastic.easeOut.config(1.1, 0.4)})
.fromTo('#inner', 1, {
y:-20,autoAlpha:0} , {
y:0,autoAlpha:1})

.fromTo('#outer', 2, {
                    strokeDasharray:2000,strokeDashoffset:2000,autoAlpha:0} , {
                    strokeDasharray:2000,strokeDashoffset:0,autoAlpha:1})
/*
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












/*

      .fromTo('#up_arrow', 1, {
                    y:-200} , {
                        y:0,ease: Bounce.easeOut})
        .fromTo('#down_arrow', 1, {
                    y:220} , {
                        y:40,ease: Bounce.easeOut},"-=1")

      .fromTo('#text', 2, {
                strokeDasharray:2000,strokeDashoffset:2000,x:160,autoAlpha:0} , {
                strokeDasharray:2000,strokeDashoffset:0,x:180,autoAlpha:1,ease: Elastic.easeOut.config(1, 0.3)})
                .fromTo('#outer_border', 2, {
                                    strokeDasharray:2000,strokeDashoffset:2000} , {
                                    strokeDasharray:2000,strokeDashoffset:0})

                                    .fromTo('#inner', 2, {
                                                        strokeDasharray:2000,strokeDashoffset:2000} , {
                                                        strokeDasharray:2000,strokeDashoffset:0},"-=1")
                                                        .to('#outer', 0.5, {
                                                                            autoAlpha:1},"-=1")

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
