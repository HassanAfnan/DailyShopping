let navcont1=document.querySelector(".maincontroller");
let collapsed=document.querySelector(".maincontrollerspec");
let widthhunter=this.screen.width;
let headertext=document.querySelector("p");
funcmain=()=>{
    if(widthhunter<=800)
    {   collapsed.classList.remove("fadeout");
        navcont1.classList.add("fadeout");
        
    }
    else if(widthhunter>800)
    {
        collapsed.classList.add("fadeout");
        navcont1.classList.remove("fadeout");
    }
}
funcmain();  

/* login button redirect*/
var loginbutton=document.querySelector("button.logined");
var loginbuttonmob=document.querySelector("button.loginedmob");
redirect=()=>{
    console.log("ok");
    this.location.href="login.html";
}
loginbutton.addEventListener("click",redirect);
loginbuttonmob.addEventListener("click",redirect);

    

