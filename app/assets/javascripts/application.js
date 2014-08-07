// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


function aa(str){
  alert("Url:dry-cliffs-4326.herokuapp.com/people/"+str);
}
$(function(){
        
        $(".sht").click(function(e){
          $srcm=this.id;
          $(".us").attr("src","http://api.k780.com:88/?app=qr.get&level=L&size=4&data=http://dry-cliffs-4326.herokuapp.com/people/"+$srcm);
          $(".dialog").show();
          $(".mask").show();
          e.stopPropagation();
        });
        $("#close").click(function(){
          $(".dialog").hide();
          $(".mask").hide();
        });

        // $(".content").click(function(){
        //   $srcm="src-mode"+this.id;
        //   window.location.href=$srcm+".html";
        // });
      })