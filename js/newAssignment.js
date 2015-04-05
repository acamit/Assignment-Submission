window.addEventListener('load' , function(){
	 var semester = document.getElementById('semester');
	 var subject = document.getElementById('subject');
	 var dept = document.getElementById('department');
	 var clse = document.getElementById('class');
	 var topic = document.getElementById('topic');
	 var day = document.getElementById('day');
	 var month = document.getElementById('month');
	 
		dept.addEventListener('change' , function(){
			 var val = dept.options[dept.selectedIndex].value;
			 op1 = "";
			 op2 = 0;
			 semester.selectedIndex =0;
		
			fetch(clse ,'dept_id',val,op1 , op2);
			/*fetch(elementToBeChanged , ForiegnKeyFieldName , foriegnTestValue )*/
			 });
		
		semester.addEventListener('change' , function(){
			
			 var op2 = semester.options[semester.selectedIndex].value;
			 var cval = clse.options[clse.selectedIndex].value;
			 var op1 = 'semester';
			fetch(subject ,'class_id',cval , op1 , op2);
			 });
		
		month.addEventListener('change' , function(){
			var month_value = month.value;
			switch(month_value){
				case "1":
				case "3":
				case "5":
				case "7":
				case "8":
				case "10":
				case "12":
				day.max = "31";
				break;
				case "2":
					var year_value = parseInt(year.value)%4;
					if(year_value == 0){
						day.max = "29";
					}else{
						day.max = "28" ;
					}
					break;
					default:
					day.max = "30";
					break;
			}
		});
		
		
});

	 function fetch(element , id2 ,pid , op1 , op2 , section){
		 if(window.XMLHttpRequest){
			 xmlhttp = new XMLHttpRequest();
		 }
		 else 
			 xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
		 xmlhttp.onreadystatechange = function(){
			 if(xmlhttp.readyState==4 && xmlhttp.status == 200){
				 var  cls= xmlhttp.responseText;
				 var cls_list = cls.substring(cls.indexOf('@')+1);
				 var cls_id_list = cls.substring(0,cls.indexOf('@'));
				 var cls = cls_list.split('#');
				 var cls_id = cls_id_list.split('^');
				 while(element.length>1){
					 element.remove(element.length-1);
				 }
				 for(i=0;i<cls.length;i++){
					 var option = document.createElement("option");
					 option.value=cls_id[i];
					 option.text=cls[i];
					 option.id=cls_id[i];
					 element.appendChild(option);
				 }
			 }
		 }
		 if(!op2){
			xmlhttp.open('GET' , 'fetch.php?'+id2+'='+pid , true);
			xmlhttp.send();
			 
		 }
		 else{
			xmlhttp.open('GET' , 'fetch.php?'+id2+'='+pid+'&'+op1+'='+op2 , true);
			xmlhttp.send();
		 }
		 
	 }
	 
	 
	 
	 