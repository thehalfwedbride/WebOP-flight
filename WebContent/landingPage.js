
        function openNav() {
            console.log("check")
            document.getElementById("mySidenav").style.width = "250px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
        }

        
        /*
     		function validateDate(){
            var departureDate = bookForm.departureDate.value;
            var returnDate = bookForm.returnDate.value;
            var dep = Date.parse(departureDate);
            var ret = Date.parse(returnDate);
            if(ret<dep){
                alert("Invalid Date");
                return false;
            }
            return true;
        }
        */

        function passwordValidation(){
            var pwd1 = signupForm.pwd1.value;
            var pwd2 = signupForm.pwd2.value;
            var len = pwd1.length;
            if(len<8 || len>12){
                alert("Password must be 8-12 characters!");
                return false;
            }
            if(pwd1!=pwd2){
                alert("Password mismatch!");
                return false;
            }
            return true;
        }