$(document).ready(function () {
        
        /*$(document).mousemove(function (e) {
                
                var highlightColor = "#59c5d9";
                
                $('.fadeIn').fadeIn("slow");
                $("#top").addClass("colorBars");
        });*/
        
        $(document).ready(function () {
                setTimeout(function () { 
                    var highlightColor = "#59c5d9";
                    
                    //$('.fadeIn').fadeIn("slow");
                    //$("#top").addClass("colorBars");
                }, 500);
        });
        
        /*$("#about-more").click(function (e) {
                var dif = 120;
                
                var aboutHeight = parseFloat($("#about div").css("height").substr(0,3));
                var menuTop = parseFloat($("#menu").css("top"));
                
                if ( $("#about-more").html() == "More") {//display all the content
                    
                    $("#about div").css(
                        "height", 
                         aboutHeight + dif
                    );
                    
                    
                    $("#about-more").html("Less");
                    $("#about-more").attr("href", "#more");
                    
                } else {//reduce the content shown
                    
                    $("#about div").css(
                        "height", 
                        aboutHeight - dif
                    );
                    
                    $("#about-more").html("More");
                    $("#about-more").attr("href", "#");
                }
        });*/
});
