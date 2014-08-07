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
$(function(){
        $("#ch").click(function(){
          $("#show").css("display","none");
          $("#edit").css("display","block");
        });
        $("div > .head").click(function(){
          $content="#content"+this.id;
          $image="#im"+this.id;
          if($($content).is(":visible")){
            $($image).attr("src","/assets/down.jpg");
            $($content).css("display","none");
          }else{
            $($image).attr("src","/assets/up.jpg");
            $($content).css("display","block")
          }
        });
        $("#save").click(function(){
          $("#show").css("display","block");
          $("#edit").css("display","none");
        });
        $("#two").click(function(){
          $(".dialog").show();
          $(".mask").show();
        })
        $("#close").click(function(){
          $(".dialog").hide();
          $(".mask").hide();
        })
         // $("#share").click(function(){
         //   alert("aaaa");
         // })
      })
function aa(str){
  alert("Url:192.168.199.119:3000/people/"+str);
}
$(function(){
        $("#card").click(function(){
          $("#card").attr("src","/assets/我的名片2.jpg");
          $("#holder").attr("src","/assets/名片夹1.jpg");
        });
        $("#holder").click(function(){
          $("#card").attr("src","/assets/我的名片1.jpg");
          $("#holder").attr("src","/assets/名片夹2.jpg");
        });
        $(".sht").click(function(e){
          $srcm="model"+this.id;
          $(".us").attr("src","./image/"+$srcm+".jpg");
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