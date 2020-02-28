// function validate(obj){
//       var letters = /^[A-Za-z]+$/;
//       var valid_email = /(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
//       // var valid_pass = new RegExp("^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})");
      
//       switch(obj.id){
//         case "firstname":
//         if (obj.value === "") {
//           //show validation message
//           document.getElementById('firstname_error_message').innerHTML = " ** Please fill the first name field";
//           document.getElementById('firstname_error_message').style.color = "red";
//         }
//         else if(!obj.value.match(letters)){
//           document.getElementById('firstname_error_message').innerHTML = " ** Only characters are allowed";
//           document.getElementById('firstname_error_message').style.color = "red";
//         }
//         else {
//           document.getElementById('firstname_error_message').style.color = "green";
//           document.getElementById('firstname_error_message').innerHTML = "First name is fine";
//         } 
//         break;

//         case "lastname":
//         if(obj.value === ""){
//           document.getElementById('lastname_error_message').innerHTML = " ** Please fill the last name field";
//           document.getElementById('lastname_error_message').style.color = "red";
//         }
//         else if(!obj.value.match(letters)){
//           document.getElementById('lastname_error_message').innerHTML = " ** Only characters are allowed";
//           document.getElementById('lastname_error_message').style.color = "red"; 
//         }
//         else{
//           document.getElementById('lastname_error_message').style.color = "green";
//           document.getElementById('lastname_error_message').innerHTML = "Last name is fine";
//         }
//         break;

//         case "email":
//         if(obj.value === ""){
//           document.getElementById('email_error_message').innerHTML = " ** Please fill the email field";
//           document.getElementById('email_error_message').style.color = "red";
//         }
//         else if(!obj.value.match(valid_email)){
//           document.getElementById('email_error_message').innerHTML = " ** Please enter a valid email";
//           document.getElementById('email_error_message').style.color = "red";
//         }
//         else{
//           document.getElementById('email_error_message').style.color = "green";
//           document.getElementById('email_error_message').innerHTML = "Email is fine";
//         }
//         break;

//         case "password":
//         if(obj.value === ""){
//           document.getElementById('password_error_message').innerHTML = " ** Please fill the password field";
//           document.getElementById('password_error_message').style.color = "red";
//         }
//         else if((obj.value.length < 8) || (obj.value.length > 20)){
//           document.getElementById('password_error_message').innerHTML = " ** Password length must be between 8 and 20";
//           document.getElementById('password_error_message').style.color = "red";
//         }
//         else if((obj.value.match(/[a-z]/g) && obj.value.match( 
//                     /[A-Z]/g) && obj.value.match( 
//                     /[0-9]/g) && obj.value.match( 
//                     /[^a-zA-Z\d]/g))){
//           document.getElementById('password_error_message').style.color = "red";
//           document.getElementById('password_error_message').innerHTML = "** Password is strong"
//         }
//         else{
//           document.getElementById('password_error_message').style.color = "green";
//           document.getElementById('password_error_message').innerHTML = "Password is fine";
//         }
//         break;

//         case "conformpassword":
//         var pass = document.getElementById('password').value;
//         if(obj.value === ""){
//           document.getElementById('conformpassword_error_message').innerHTML = " ** Please fill the conform password field";
//           document.getElementById('conformpassword_error_message').style.color = "red";
//         }
//         else if(pass != obj.value){
//           document.getElementById('conformpassword_error_message').style.color = "red";
//           document.getElementById('conformpassword_error_message').innerHTML = " ** Password are not matching";
//         }
//         else {
          
//           document.getElementById('conformpassword_error_message').style.color = "green";
//           document.getElementById('conformpassword_error_message').innerHTML = "";
//         }
//         break;

//         case "contact":
//         if(obj.value === ""){
//           document.getElementById('mobilenumber_error_message').innerHTML = " ** Please fill the mobile number field";
//           document.getElementById('mobilenumber_error_message').style.color = "red";
//         }
//         else if(isNaN(obj.value)){
//           document.getElementById('mobilenumber_error_message').innerHTML = " ** User must write digits only not characters";
//           document.getElementById('mobilenumber_error_message').style.color = "red";
//         }
//         else if(obj.value.length != 10){
//           document.getElementById('mobilenumber_error_message').innerHTML = " ** Mobile number must be 10 digits only";
//           document.getElementById('mobilenumber_error_message').style.color = "red";
//         }
//         else{
//           document.getElementById('mobilenumber_error_message').style.color = "green";
//           document.getElementById('mobilenumber_error_message').innerHTML = "Mobile number is fine";
//         }
//         break;

//         case "paid":
//         if(obj.value === ""){
//           document.getElementById('payment_error_message').style.color = "red";
//           document.getElementById('payment_error_message').innerHTML = " ** Please select the payment field";
//         }
//         else{
//           document.getElementById('payment_error_message').style.color = "green";
//           document.getElementById('payment_error_message').innerHTML = "Selected!";
//         }
//         break;

//         case "address":
//         if(obj.value.length > 20){
//           document.getElementById('address_error_message').style.color = "red";
//           document.getElementById('address_error_message').innerHTML = "Please minimize the address";
//         }
//         else{
//           document.getElementById('address_error_message').style.color = "green";
//           document.getElementById('address_error_message').innerHTML = "Address must be less than 20 characters";
//         }
//         break;
//       }
//     }
    
//     function validation(){
//       var firstname = document.getElementById('firstname').value;
//       var lastname = document.getElementById('lastname').value;
//       var email = document.getElementById('email').value;
//       var password = document.getElementById('password').value;
//       var conformpassword = document.getElementById('conformpassword').value;
//       var contact = document.getElementById('contact').value;
//       var paid = document.getElementById('paid').value;
//       var address = document.getElementById('address').value;
//       var letters = /^[A-Za-z]+$/;
//       var pass = document.getElementById('password').value;
//       var cpass = document.getElementById('conformpassword').value;
//       var valid_email = /(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;



//       if(firstname == ""){
//         document.getElementById('firstname_error_message').style.color = "red";
//         document.getElementById('firstname_error_message').innerHTML = " ** Please fill the first name field";
//         return false;
//       }

//       if(!firstname.match(letters)){
//         document.getElementById('firstname_error_message').innerHTML = " ** Only characters are allowed";
//         return false;
//       }

//       if(lastname == ""){
//         document.getElementById('lastname_error_message').style.color = "red";
//         document.getElementById('lastname_error_message').innerHTML = " ** Please fill the last name field";
//         return false;
//       }

//       if(!lastname.match(letters)){
//         document.getElementById('lastname_error_message').innerHTML = " ** Only characters are allowed";
//         return false;
//       }

//       if(email == ""){
//         document.getElementById('email_error_message').style.color = "red";
//         document.getElementById('email_error_message').innerHTML = " ** Please fill the email field";
//         return false;
//       }

//       if(!email.match(valid_email)){
//         document.getElementById('email_error_message').style.color = "red";
//         document.getElementById('email_error_message').innerHTML = " ** Please enter a valid email"
//         return false;
//       }

//       // if(email.indexOf('@') <= 0){
//       //   document.getElementById('email_error_messageone').innerHTML = " ** @ invalid position";
//       //   return false;
//       // }

//       // if((email.charAt(email.length-4)!='.') && (email.charAt(email.length-3)!='.')){
//       //   document.getElementById('email_error_messagetwo').innerHTML = " ** . invalid position";
//       //   return false;
//       // }

//       if(password == ""){
//         document.getElementById('password_error_message').style.color = "red";
//         document.getElementById('password_error_message').innerHTML = " ** Please fill the password field";
//         return false;
//       }

//       // if((password.length < 8) || (password.length > 20)){
//       //   document.getElementById('password_error_messageone').innerHTML = " ** Password length must be between 8 and 20";
//       //   return false;
//       // }

//       // if(password != conformpassword){
//       //   document.getElementById('conformpassword_error_message').innerHTML = " ** Password are not matching";
//       //   return false;
//       // }

//       if(conformpassword == ""){
//         document.getElementById('conformpassword_error_message').style.color = "red";
//         document.getElementById('conformpassword_error_message').innerHTML = " ** Please fill the conform password field";
//         return false;
//       }

//       if(pass != cpass){
//         document.getElementById('conformpassword_error_message').style.color = "red";
//         document.getElementById('conformpassword_error_message').innerHTML = " ** Password are not matching";
//         return false;
//       }


//       if(contact == ""){
//         document.getElementById('mobilenumber_error_message').style.color = "red";
//         document.getElementById('mobilenumber_error_message').innerHTML = " ** Please fill the mobile number field";
//         return false;
//       }

//       // if(isNaN(contact)){
//       //   document.getElementById('mobilenumber_error_messageone').innerHTML = " ** User must write digits only not characters";
//       //   return false;
//       // }

//       // if(contact.length != 10){
//       //   document.getElementById('mobilenumber_error_messagetwo').innerHTML = " ** Mobile number must be 10 digits only";
//       //   return false;
//       // }

//       if(paid == ""){
//         document.getElementById('payment_error_message').style.color = "red";
//         document.getElementById('payment_error_message').innerHTML = " ** Please select the payment field";
//         return false;
//       }

//       if(address.length > 20){
//         document.getElementById('address_error_message').style.color = "red";
//         document.getElementById('address_error_message').innerHTML = "Please minimize the address";
//         return false;
//       }
//     }
