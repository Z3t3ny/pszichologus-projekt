<!DOCTYPE html>


    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Bejelentkezés</title>   
        <meta name='description' content='Weiss pszihologus'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel='stylesheet' href='pszihologus.css'>    
    </head>
<body>

    
</div>

    

</div>
<div class='loginFormContainer'>
    <form action='login_ir.php' method=post target='kisablak' >
            <!-- Headings for the form -->
            <div class='headingsContainer'>
                <h3>Jelentkezzen be!</h3>
                
            </div>

            <!-- Main container for all inputs -->
            <div class='mainContainer'>
                <!-- Username -->
                <label for='username'>Felhasználónév/Email</label>
                <input placeholder='' name='email' required>

                <br><br>

                <!-- Password -->
                <label for='pswrd'>Jelszó</label>
                <input type='password' placeholder='' name='pw' required>

                <!-- sub container for the checkbox and forgot password link -->
                
                <div class='subcontainer-1'>
                
                        
                        Emlékezzen rám!
                        <input type='checkbox' name='remember' style='width: 15px; display:right;'>
                    
                    
                
                </div>  


                <!-- Submit button -->
                <button type='submit'>Belépés</button>

                <!-- Sign up link -->
                <p class='register'>Még nincs regisztrálva?  <a href='regisztracio'>Regisztráljon itt!</a></p>
                <p class='forgotpsd'> <a href='#'>Elfelejtettem a jelszavam!</a></p>

            </div>

        </form>
    </div>
</body>
</html>
<?php



?>