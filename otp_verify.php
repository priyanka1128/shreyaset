<?php
include_once("connection.php");

    $otp=$_POST['otp'];
    $request_type=$_POST['type'];
    $f_name=$_POST['f_name'];
    $l_name=$_POST['l_name'];
    $dob=$_POST['dob'];
	$mobile=$_POST['mobile'];
	$email=$_POST['email'];
	$fan_of=$_POST['fan_of'];
	$pic=$_POST['pic'];
	$target_dir = "uploads/";
	$target_file = $target_dir . basename($_FILES["pic"]["name"]);
		$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
		
		if (move_uploaded_file($_FILES["pic"]["tmp_name"], $target_file)){
			echo "The file ". basename( $_FILES["pic"]["name"]). " has been uploaded.";
			} else {
			echo "Sorry, there was an error uploading your file.";
		}
		
	$image="https://www.shreyaset.com/Shreyas/uploads/".$_FILES["pic"]["name"];

    
	$data = array();
   if (isset($_POST['submit'])) {
	    $sms_codes=mysqli_query($db,"select * from sms_codes where CONCAT('+91',mobile)='$mobile' OR mobile='$mobile' OR mobile=CONCAT('91','$mobile') ");
	    $row=mysqli_fetch_array($sms_codes);
	    $otp1=$row['otp'];
	    if($otp == $otp1){
	            $stmt=mysqli_query($db,"select * from users where CONCAT('+91',mobile)='$mobile' OR mobile='$mobile' OR mobile=CONCAT('91','$mobile')");
	            $row = mysqli_fetch_array($stmt);
                $f_name=$row['f_name'];
                $l_name=$row['l_name'];
                $dob=$row['dob'];
                $email=$row['email'];
                $mobile=$row['mobile'];
                $fan_of=$row['fan_of'];
            	$pic=$row['pic'];
            	
                
                 $temp = array(); 
                  $temp["status"] = "Ok";
			     $temp["message"] = "User Login Successful"; 
                 $temp['f_name'] = $f_name; 
                 $temp['l_name'] = $l_name;
                 $temp['dob'] = $dob;
                 $temp['email'] = $email;
                 $temp['mobile'] = $mobile;
                 $temp['fan_of'] = $fan_of;
                 $temp['pic'] = $pic;
       
                 array_push($data, $temp);
                 
                 echo json_encode($data);
                 
// $myObj->status = "Ok";
// $myObj->message = "User Login Successful";
// $myObj->data = $temp;
// echo json_encode($myObj);
			      
                 //displaying the result in json format 
                 
                //  $data1=json_encode($data,JSON_FORCE_OBJECT);
                //  echo "data:".$data1;
	    }else{
    	         $temp["status"] = "Failed";
    			 $temp["message"] = "Incorrect Otp";
	             array_push($data, $temp);
                 echo json_encode($data);
                 
	    }
	 
	}else{
	    $sms_codes=mysqli_query($db,"select * from sms_codes where CONCAT('+91',mobile)='$mobile' OR mobile='$mobile' OR mobile=CONCAT('91','$mobile')");
	    $row=mysqli_fetch_array($sms_codes);
	    $otp1=$row['otp'];
	    
	    $isUserExists=mysqli_query($db,"select * from users where CONCAT('+91',mobile)='$mobile' OR mobile='$mobile' OR mobile=CONCAT('91','$mobile')");

        $row=mysqli_fetch_array($isUserExists);
        $mobile1=$row['mobile'];
    
	    $data = array();
	    if ($mobile==$mobile1 && $mobile == "+91".$mobile1) {
	        $temp["status"] = "Failed";
		    $temp["message"] = "User already exists";
	        array_push($data, $temp);
	        echo json_encode($data);
	    }else{
	        if($otp == $otp1 ){
                
	        $users="INSERT INTO `users`(`f_name`, `l_name`, `dob`, `mobile`, `email`, `fan_of`, `pic`)
            VALUES ('$f_name','$l_name','$dob','$mobile','$email','$fan_of','$image')";
            
            	if(mysqli_query($db,$users)){
		        
            	}
	
			 $stmt=mysqli_query($db,"select * from users where mobile='$mobile'");
	            $row = mysqli_fetch_array($stmt);
                $f_name=$row['f_name'];
                $l_name=$row['l_name'];
                $dob=$row['dob'];
                $email=$row['email'];
                $mobile=$row['mobile'];
                $fan_of=$row['fan_of'];
            	$pic=$row['pic'];
                
                 $temp = array();
                 $temp["status"] = "Ok";
			     $temp["message"] = "User Created Successful"; 
                 $temp['f_name'] = $f_name; 
                 $temp['l_name'] = $l_name;
                 $temp['dob'] = $dob;
                 $temp['email'] = $email;
                 $temp['mobile'] = $mobile;
                 $temp['fan_of'] = $fan_of;
                 echo $f_name."hi";

                 $temp['pic'] = $pic;
                 
       
                 array_push($data, $temp);
			      
                 //displaying the result in json format 
                 echo json_encode($data);
	        }else{
                 $temp["status"] = "Ok";
			     $temp["message"] = "User Created Successful"; 
                 
                 array_push($data, $temp);
                 echo json_encode($data);

	        }
	    }
	    
	}
	
	?>