<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bank App</title>
<script>
	function calculation(value){
		
		var flag = true;
		var thousand = 0, fiveHundred = 0, hundred = 0, fifty = 0, twenty = 0, ten = 0, five = 0, one = 0;
		
		do{ 
			if(value>=1000){                        // for 1000 Rs. count
				value = value - 1000; 
				thousand++;							// variable for 1000 Rs. counter
			}else if(value>=500){					// for 500 Rs. count
				value = value - 500;     			
				fiveHundred++;						// variable for 500 Rs. counter
			}else if(value>=100){					// for 100 Rs. count
				value = value - 100;
				hundred++;							// variable for 100 Rs. counter
			}else if(value>=50){					// for 50 Rs. count
				value = value - 50;
				fifty++;							// variable for 50 Rs. counter
			}else if(value>=20){					// for 20 Rs. count
				value = value - 20;
				twenty++;							// variable for 20 Rs. counter
			}else if(value>=10){					// for 10 Rs. count
				value = value - 10;
				ten++;								// variable for 10 Rs. counter
			}else if(value>=5){						// for 5 Rs. count
				value = value - 5;
				five++;								// variable for 5 Rs. counter
			}else if(value>=1){						// for 1 Rs. count
				value = value - 1;
				one++;								// variable for 1 Rs. counter
			}else{
				flag = false;
			}			
		}while(flag == true);
		
		
		document.getElementById('thousandNote').value = thousand;
		document.getElementById('fiveHundredNote').value = fiveHundred;
		document.getElementById('hundredNote').value = hundred;
		document.getElementById('fiftyNote').value = fifty;
		document.getElementById('twentyNote').value = twenty;
		document.getElementById('tenNote').value = ten;
		document.getElementById('fiveNote').value = five;
		document.getElementById('oneNote').value = one;
		
		
		
		
	}
</script>
</head>
<body>
<table>
	<tr>
		<th>Enter Amount:</th>
		<td><input type="text" name="amount" id="amount" value="" onchange="calculation(this.value)"></td>
	</tr>	
	
	<tr>	
		<th>1000 :</th>
		<td><input type="text" name="amount" id="thousandNote" value="" ></td>
	</tr>	
	
	<tr>	
		<th>500:</th>
		<td><input type="text" name="amount" id="fiveHundredNote" value=""></td>
	</tr>
	
	<tr>	
		<th>100:</th>
		<td><input type="text" name="amount" id="hundredNote" value=""></td>
	</tr>
	
	<tr>	
		<th>50:</th>
		<td><input type="text" name="amount" id="fiftyNote" value=""></td>
	</tr>	
	
	<tr>
		<th>20:</th>
		<td><input type="text" name="amount" id="twentyNote" value=""></td>
	</tr>
	
	<tr>	
		<th>10:</th>
		<td><input type="text" name="amount" id="tenNote" value=""></td>
	</tr>
	
	<tr>	
		<th>5:</th>
		<td><input type="text" name="amount" id="fiveNote" value=""></td>
	</tr>
	
	<tr>
		<th>1:</th>
		<td><input type="text" name="amount" id="oneNote" value=""></td>
	</tr>
</table>
</body>
</html>