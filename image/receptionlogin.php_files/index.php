
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="index.php">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@300;400&display=swap" rel="stylesheet">
	
	<title></title>
</head>
<body>
<nav class="navbar navbar-expand-lg fixed-top navbar-dark ">
        <a class="navbar-brand font-weight-bold text-white text-uppercase" href="#">Hospital Management </a>
  <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto text-uppercase font-weight-bold">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Specialist 
         </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="cardiologist.php">Cardiologist</a>
          <a class="dropdown-item" href="audiologist.php">Audiologist</a>
          <a class="dropdown-item" href="dentist.php">Dentist</a>
          <a class="dropdown-item" href="ent.php">ENT</a>
          <a class="dropdown-item" href="gynaecologist.php">Gynaecologist</a>
          <a class="dropdown-item" href="orthopaedic.php">Orthopaedic Surgeon</a>
          <a class="dropdown-item" href="paediatrician.php">Paediatrician</a>
          <a class="dropdown-item" href="psychiatrists.php">Psychiatrists</a>
          <a class="dropdown-item" href="radiologist.php">Radiologist</a>
          <a class="dropdown-item" href="pulmonologist.php">Pulmonologist</a>
          <a class="dropdown-item" href="endocrinologist.php">Endocrinologist</a>
          <a class="dropdown-item" href="oncologist.php">Oncologist</a>
          <a class="dropdown-item" href="neurologist.php">Neurologist</a>
          <a class="dropdown-item" href="cardiothoracic.php">Cardiothoracic Surgeon</a>
          </div>
      </li>
      <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           Ambulance Status
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">General</a>
          <a class="dropdown-item" href="#">with oxygen</a>
          <a class="dropdown-item" href="#">Vantilator</a>
          <a class="dropdown-item" href="#"></a>
          
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           Bed Status
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">General ward</a>
          <a class="dropdown-item" href="#">Cabin Single bed</a>
          <a class="dropdown-item" href="#">Cabin Double bed</a>
          
          
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.php#contactus">ContactUs</a>
      </li><li class="nav-item">
        <a class="nav-link" href="#">AboutUs</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           Login
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="receptionlogin.php">Reception Login</a>
          <a class="dropdown-item" href="doctorlogin.php">Doctor Login</a>
          <a class="dropdown-item" href="admin.php">Admin Login</a>
          
          
        </div>
      </li>
    </ul>
   
  </div>
  
</nav>
</div>
<div class="scrolltop float-right">
	<i class="fa fa-arrow-up" onclick="topFunction()" id="myBtn"></i>
	
</div>

    <script src="js/jquery.js"></script> 
    <script src="js/bootstrap.min.js"></script>
    <script src="js/project.js"></script>
    <script type="text/javascript"></script>
    <script>
mybutton = document.getElementById('myBtn');
window.onscroll=function() {scrollFunction()};
function scrollFunction(){
	if (document.body.scrollTop>20|| document.documentElement.scrollTop>20) {
		mybutton.style.display="block";}
		else{
			mybutton.style.display="none";
		}
}
</script>
</body>
</html><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="index.php">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@300;400&display=swap" rel="stylesheet">
    <title>navbar</title>
     
</head>
<body>
  
  

</body>
<div class="scrolltop float-right">
    <i class="fa fa-arrow-up" onclick="topFunction()" id="myBtn"></i>
    
</div>

    <script src="js/jquery.js"></script> 
    <script src="js/bootstrap.min.js"></script>
    <script src="js/project.js"></script>
    <script type="text/javascript"></script>
    <script>
          mybutton = document.getElementById('myBtn');
          window.onscroll=function() {scrollFunction()};
          function scrollFunction(){
          if (document.body.scrollTop>20|| document.documentElement.scrollTop>20) {
          mybutton.style.display="block";}
           else{
            mybutton.style.display="none";
        }
}
</script>

</html><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@300;400&display=swap" rel="stylesheet">
    <title>home page</title>
</head>
<body>
	<!--*****************Navitation bar embeded by php*******-->
    <div class="header" id="header">
    <div class="container text-uppercase"></div>

<section class="header-section">
    <div class="center-div">
        <h1 class="font-weight-bold "> Hospital Management System</h1>
        <p>How can I help You</p>
        <div class="header-buttons">
            <a href="#">AboutUs</a>
            <a href="#contactus">Contact</a>
            
        </div>
    </div>
</section>
<!-- ********************************Header/Home part end************************** -->
<!-- ********************************second part start************************** -->
<section class="second">
	<div class="container">
		<div class="row">
			<div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Cardiologist"></s></a>
				<h2>Cardiologist</h2>
				<p>A cardiologist is a doctor that deals with the cardiovascular system. This means he or she treats any abnormality in our blood vessels and heart. This can include heart disease or condition which requires diagnosis and treatment.</p>
				
			</div>
			<div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Audiologist"></s></a>
				<h2>Audiologist</h2>
				<p>As the name suggests, an audiologist treats and evaluates anything and everything to do with audio or hearing abilities of a person. Since hearing is a very important sense, it requires an expert to treat the same.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Dentist"></s></a>
				<h2>Dentist</h2>
				<p>According to American Dental Association, a dentist is a doctor of oral health. Oral health includes teeth, tongue and gums. A dentist is known to diagnose and treat issues of these three areas.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="ENT"></s></a>
				<h2>ENT</h2>
				<p>ENT stands for ear, nose and throat. A specialist who treats and diagnoses the issues and troubles of these three areas. Also known as an otolaryngologist, an ENT specialist is a physician to trained to treat the disorders of ENT.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Gynaecologist"></s></a>
				<h2>Gynaecologist</h2>
				<p>A gynaecologist is trained to treat the female reproductive system which includes the vagina, uterus, ovaries and breasts.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Orthopaedic"></s></a>
				<h2>Orthopaedic surgeon</h2>
				<p>An orthopaedic surgeon is known to deal with issues relating to the musculoskeletal system. This means muscles and bones. Any fracture, pain or abnormality of these areas need to be consulted about with an orthopaedic surgeon.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Paediatrician"></s></a>
				<h2>Paediatrician</h2>
				<p>Paediatricians are doctors who treat children. Since a child’s body functions in a different manner from ours, due to many factors like age and growing stages, their illness and health issues are different from an adult. A paediatrician helps in mental behaviour issues and physical health problems.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Psychiatrists"></s></a>
				<h2>Psychiatrists</h2>
				<p>Mental health is a vast field which requires our uttermost attention. Therefore, to treat what goes inside a human brain is difficult, due to the uncertainty of it. A psychiatrist helps treat and diagnose issues of mental health.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Radiologist"></s></a>
				<h2>Radiologist</h2>
				<p>A radiologist for diagnosing diseases and internal & external injuries with the help of imaging techniques like x-rays, CT scan, MRI and ultrasound etc. They are the first step towards the diagnosis of any sort, which cannot be done without a machine.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Pulmonologist"></s></a>
				<h2>Pulmonologist</h2>
				<p> Pulmonary means lungs, hence a doctor who treats lungs. Since the list of abnormalities and issues relating to lungs is long in modern times, a pulmonologist helps diagnose and treat common issues like lung cancer.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Endocrinologist"></s></a>
				<h2>Endocrinologist</h2>
				<p>An endocrinologist is responsible for treating the endocrine system which includes the pituitary gland, pancreas, ovaries, thyroid, hypothalamus etc. they help in treating diabetes, hyperthyroidism etc.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Oncologist"></s></a>
				<h2>Oncologist</h2>
				<p>Oncology involves the study of all types of cancers. This involves the radiation, medical and surgical. Oncologists can specialise in one type of cancer as well as the field is vast.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Neurologist"></s></a>
				<h2>Neurologist</h2>
				<p>As the name suggests, a neurologist is responsible for treating and diagnosing issues of the nervous system. Our nervous system includes our brain, spinal cord, sensory organs, and all the nerves.</p>
				
			</div><div class="specialist col-lg-4 col-md-4 col-12">  
				<a href="#"><s class="Cardiothoracic"></s></a>
				<h2>Cardiothoracic Surgeon</h2>
				<p>Thorax means the chest. A cardiothoracic surgeon treats conditions of the heart, lungs, oesophagus and other organs in the chest.</p>
				
			</div>
			
		</div>
		
	</div>
	
</section>
<!-- ********************************second part end************************** -->
<!-- ********************************contact start************************** -->
<section class="contactus" id="contactus">
	<div class="container headings text-center">
		<h1 class="text-center font-weight-bold">CONTACT US </h1>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<h1>Drop Us A Line</h1>
				<h6>If you have any questons,please fell free to get in touch with us.<br>We will reply to you as soon as possible.<br>Thank you!</h6>
		        <form action="/action_page.php">
				  <div class="form-group">
				    <input type="text" class="form-control" placeholder="Enter Name" id="name"required autocomplete="on">
				  </div>

				  <form action="/action_page.php">
				  <div class="form-group">
				    <input type="email" class="form-control" placeholder="Enter email" id="email"required autocomplete="on">
				  </div>

				  <form action="/action_page.php">
				  <div class="form-group">
				    <input type="number" class="form-control" placeholder="Enter Mobile no." id="mobile"required autocomplete="on">
				  </div>

				  <form action="/action_page.php">
				  <div class="form-group">
   					<textarea class="form-control" rows="4" id="comment" placeholder="Message"></textarea>
				  </div>

				  <div class="d-flex justify-content-center">
				  <button type="submit" class="btn btn-primary">Submit</button>
				  </div>
				</form>	
			</div>
			<div class="col-sm-6">
				<div class="address">
				<br><br>
				<h1>Address</h1>
				<h3> Lalpur,Ranchi,Jharkhand 834001</h3>
				<br><br>
				<h1>Mobile No.</h1>
				<h3>7004505378</h3>
				</div>
			</div>
		</div>
		
	</div>
</section>
<!-- ********************************contact end************************** -->
<div class="scrolltop float-right">
	<i class="fa fa-arrow-up" onclick="topFunction()" id="myBtn"></i>
	
</div>

    <script src="js/jquery.js"></script> 
    <script src="js/bootstrap.min.js"></script>
    <script src="js/project.js"></script>
    
    <script>
mybutton = document.getElementById('myBtn');
window.onscroll=function() {scrollFunction()};
function scrollFunction(){
	if (document.body.scrollTop>20|| document.documentElement.scrollTop>20) {
		mybutton.style.display="block";}
		else{
			mybutton.style.display="none";
		}
}
</script>
</body>
</html>