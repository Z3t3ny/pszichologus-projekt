<?php


    print "<hr>" ;

    if( $_POST['uemail']=="" )  
		die( "<script> alert('Nem adtad meg az e-mail címed!') </script>" ) ;

    if( strlen($_POST['upw1']) < 4 )  
		die( "<script> alert('A jelszónak min. 4 karakter hosszúságúnak kell lennie!') </script>" ) ;

    if( $_POST['upw1']!=$_POST['upw2'] )  
		die( "<script> alert('Nem egyeznek a jelszavaid!') </script>" ) ;

    print_r ( $_POST ) ;

    include("kapcsolat.php") ;

	$sorokszama = mysqli_num_rows( mysqli_query( $adb , " 

							SELECT * FROM user 
							WHERE uemail='$_POST[uemail]' 
							AND (ustatusz='A' OR ustatusz='F') 
	" ) ) ;

	if( $sorokszama>0 )  
		die( "<script> alert('Ezzel az e-mail címmel már regisztráltál!') </script>" ) ;


	if( mysqli_num_rows( mysqli_query( $adb , " 

							SELECT * FROM korabbinev 
							WHERE kunick='$_POST[unick]' 
	" ) ) )
		die( "<script> alert('Ez a felhasználónév már foglalt!') </script>" ) ;


	$md5pw = md5( $_POST['upw1'] ) ;

	$strid = randomstr(10) ;

	mysqli_query( $adb , "

		INSERT INTO user (uid ,  ustrid  ,         unick  ,     upw ,         unev    , uwmail,         uemail  , uom, udatum,  uip , ustatusz, ukomment) 
		VALUES           (NULL, '$strid' , '$_POST[unick]', '$md5pw', '$_POST[unev]'  , ''    , '$_POST[uemail]', '' , NOW() , '$ip', 'A'     , ''      )


	" ) ;

	$uzenet = "Kedves szöveg....

https://weissesvagyok.hu/regisztracio-megerosites/" . $strid . "

	" ;


//	mail( $_POST['uemail'] , "Regisztráció megerősítése" , $uzenet , "From:ne-valaszolj@weissesvagyok.hu" ) ;


	print  "<script> 
				
				alert('Regisztrációd sikeresen megtörtént.') 
			
				parent.location.href = \"http://localhost/zz/wvp/belepes\" 
			
			</script>" ;
			


    mysqli_close( $adb ) ;
?>