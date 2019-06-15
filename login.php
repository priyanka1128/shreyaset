<?php
include_once("connection.php");

	$mobile=$_POST['mobile'];
	
	$isuserExists=mysqli_query($con,"select * from users where CONCAT('+91',mobile)='$mobile' OR mobile='$mobile' OR mobile=CONCAT('91','$mobile') ");
	$row=mysqli_fetch_array($isuserExists);
	$mobile1=$row['mobile'];
	$mobile2="+91";
    

	$data = array();

	if ($mobile == $mobile2.$mobile1 || $mobile = $mobile1) {
	    //echo $mobile2.$mobile1;
	    //generate otp
	        $otp = rand(100000, 999999);
	        //$delete_otp = mysqli_query($conn,"DELETE FROM sms_codes WHERE `created_at` < (NOW() - INTERVAL 1 MINUTE)");
            $delete_otp = mysqli_query($con,"DELETE FROM sms_codes where mobile='$mobile' OR CONCAT('+91',mobile)='$mobile'");
            $sms_code=mysqli_query($con,"insert into sms_codes (mobile,otp) values ('$mobile','$otp')");
            if($sms_code){
                sendSms($mobile, $otp);
                $temp["status"] = "Ok";
		        $temp["message"] = "suceess";
		        $temp['otp'] = $otp;
     	        array_push($data, $temp);
     	        echo json_encode($data);
                }
            
	}else{
	            $temp["status"] = "Failed";
		        $temp["message"] = "User Doesn't Exists";
     	        array_push($data, $temp);
     	        echo json_encode($data);
	}

	function sendSms($mobile, $otp) {
 
    //Your message to send, Add URL encoding here.
    $message = urlencode("Hello! Welcome To Shreyas. Your Login OPT is : ".$otp);
 
    $response_type = 'json';
 
    //Define route 
    $route = "4";
     
    //Prepare you post parameters
    $postData = array(
        'authkey' => MSG91_AUTH_KEY,
        'mobiles' => $mobile,
        'message' => $message,
        'sender' => MSG91_SENDER_ID,
        'route' => $route,
        'response' => $response_type
    );
 
//API URL
    $url = "https://control.msg91.com/sendhttp.php";
 
// init the resource
    $ch = curl_init();
    curl_setopt_array($ch, array(
        CURLOPT_URL => $url,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_POST => true,
        CURLOPT_POSTFIELDS => $postData
            //,CURLOPT_FOLLOWLOCATION => true
    ));
 
 
    //Ignore SSL certificate verification
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
 
 
    //get response
    $output = curl_exec($ch);
 
    //Print error if any
    if (curl_errno($ch)) {
        echo 'error:' . curl_error($ch);
    }
 
    curl_close($ch);
}
?>