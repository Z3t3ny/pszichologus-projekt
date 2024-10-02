<?php
  session_start()


?>  
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Pszihologus</title>
        <meta name="description" content="Weiss pszihologus">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="pszihologus.css">
    </head>
    <body>
      <div id="fejlec">
        <a href="index.php" id="cimerkep" title="WEISSesvagyok.hu - főoldal">
	      <img src="images/logo.png" alt="WEISSesvagyok.hu">
	      </a>

	    <div id="menu">
	      <a href="/meresek/"> MÉRÉSEK </a>  <!-- digit. okt. , TE   -->
	      <a href="/tesztek/"> TESZTEK </a>  <!-- személyiségtesztek -->
	      <a href="/portrek/"> PORTRÉK </a>  <!-- személyiségtesztek -->
	      <a href="/palyaiv/"> PÁLYAÍV </a>  <!-- ... ... ... ...    -->
        <a href="*"> PSZICHOLÓGUS </a>  <!-- ... ... ... ...    -->
          
        <div id="belepes">
            
          

            <?php 

              
            
            

              if(!isset($_SESSION['uid']))
              {
                print '<a href="belepes"> BELÉPÉS </a>' ; //print "<a href='belepes'> BELÉPÉS </a>" ;
              }
              else
              {
                echo "<a href='profil'> $_SESSION[unick] </a>" ;
                      //print "<a href='index.php'>. "$user['unick']" . </a>" ;
                
                print"
                  
                    <a href='javascript:' onclick='kisablak.location.href=\"http://localhost/zz/wvp/logout.php\"'><img src='images/logout.png' class='kilepesgomb' alt='profilkep'></a>


                    ";
              }
                    


            
            ?>
            <script>
            

            </script>
            
        </div>

	    </div>

  <hr style="clear:both; margin:0;" size="1">
    </div>

    
   


<div>
<?php


    $m1 = $_GET['m1'];  

    if( !isset( $_SESSION['uid'] ) )
    {
    
    if( $m1 == "belepes"      )        include( "login.php" ) ;
    if( $m1 == "regisztracio" )        include( "reg.php"   ) ;
    
    }
    else
    {
    print $_SESSION['unick'] . ", Sikeresen beléptél!";
    
    }




    
    
?>
</div>

<iframe name='kisablak' id="kisablak"></iframe>
 


    </body>
</html>