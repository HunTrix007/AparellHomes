/*
//Change theme
var theme = localStorage.getItem("Light");
light(theme);

function light(val){
    if(val == 'OFF'){
        document.getElementById("stylesheet").href = "style/darkstyle.css";
        document.getElementById("logo").src = "images/Logo(dark).png";
        localStorage.setItem("Light","OFF");
    }
    else if(val == 'ON'){
        document.getElementById("stylesheet").href = "style/lightstyle.css";
        document.getElementById("logo").src = "images/Logo(light).png";
        localStorage.setItem("Light","ON");
    }
}
*/

//show profile menu
function showDpNav(){
    document.getElementById("dpNav").style.display = "block";
}
//hide profile menu
function hideDpNav(){
    document.getElementById("dpNav").style.display = "none";
}

//Animate increasing numbers
function runNum(){
    var v = parseInt(document.getElementById("viewers").innerHTML);
    var b = parseInt(document.getElementById("buyers").innerHTML);
    var s = parseInt(document.getElementById("sellers").innerHTML);
    var a = parseInt(document.getElementById("ads").innerHTML);
    view();
    buy();
    sell();
    ad();

    function view(){
        if(v <= 10000){
            document.getElementById("viewers").innerHTML = v + "+";
            setTimeout(function(){
                if(v < 10){
                    v++;
                }
                else if(v < 100){
                    v = v + 10;
                }
                else{
                    v = v + 100;
                }

                
                view();
            },1);
        }
    }

    function buy(){
        if(b <= 8000){
            document.getElementById("buyers").innerHTML = b + "+";
            setTimeout(function(){
                if(b < 10){
                    b++;
                }
                else if(b < 100){
                    b = b + 10;
                }
                else{
                    b = b + 100;
                }

                
                buy();
            },1);
        }
    }

    function sell(){
        if(s <= 4000){
            document.getElementById("sellers").innerHTML = s + "+";
            setTimeout(function(){
                if(s < 10){
                    s++;
                }
                else if(s < 100){
                    s = s + 10;
                }
                else{
                    s = s + 100;
                }

                
                sell();
            },1);
        }
    }

    function ad(){
        if(a <= 100){
            document.getElementById("ads").innerHTML = a + "%";
            setTimeout(function(){
                a++;
                ad();
            },1);
        }
    }
}
function showcontact(){
    document.getElementById('contactno').style.display="block";
}