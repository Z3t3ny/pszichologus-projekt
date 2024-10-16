<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Pszihológus</title>
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
    echo "<a href='profil'> $_SESSION[unick] </a>" ;//print "<a href='index.php'>. "$user['unick']" . </a>" ;
          
                
  print"
  <a href='javascript:' onclick='kisablak.location.href=\"http://localhost/zz/wvp/logout.php\"'><img src='images/logout.png' class='kilepesgomb' alt='profilkep'></a>          
  ";
  }

                    
                    


            
?>
            
      </div>

	    </div>

<hr style="clear:both; margin:0;" size="1">
    </div>

    <br><br>

    <div class="responsive-container-block bigContainer">
  <div class="responsive-container-block Container">
  <img class="mainImg" src="https://cdn.nwmgroups.hu/s/img/i/1712/20171221gaspar-laci-kedvenc-unnepe-a.jpg">
    <div class="allText aboveText">
      <p class="text-blk headingText">
        Varga Krisztina
      </p>
      <p class="text-blk subHeadingText">
        Iskola Pszihológus
      </p>
      <p class="text-blk description">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum pulvinar ullamcorper suspendisse ac eget. Pellentesque tempus leo in ullamcorper quis vestibulum ligula elementum ut.
      </p>
    </div>
  </div>
    </div>


   
<iframe name='kisablak' id="kisablak"></iframe>
 
<!-- Site footer -->
<footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">Scanfcode.com <i>CODE WANTS TO BE SIMPLE </i> is an initiative  to help the upcoming programmers with the code. Scanfcode focuses on providing the most efficient code or snippets as the code wants to be simple. We will help programmers build up concepts in different programming languages that include C, C++, Java, HTML, CSS, Bootstrap, JavaScript, PHP, Android, SQL and Algorithm.</p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Categories</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/category/c-language/">C</a></li>
            </ul>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/about/">About Us</a></li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2017 All Rights Reserved by 
         <a href="#">Scanfcode</a>.
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>

    </body>
</html>
