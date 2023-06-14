//show showpwd img
function showImg(pId,imgId){
    let val = document.getElementById(pId).value;

    if(val != ''){
        document.getElementById(imgId).style.display = "block";
    }
    else{
        document.getElementById(imgId).style.display = "none";
    }
}

//Show/Hide Password
function showPwd(pId, imgId){
    let type = document.getElementById(pId).type;

    if(type == 'password'){
        document.getElementById(pId).type = "text";
        document.getElementById(imgId).src = "images/hide.png";
    }
    if(type == 'text'){
        document.getElementById(pId).type = "password";
        document.getElementById(imgId).src = "images/show.png";
    }
}