window.addEventListener('load' , function(){

 var semester = document.getElementById('semester');
 var subject = document.getElementById('subjects');
 var dept = document.getElementById('department');
 var clse = document.getElementById('class');
 var topic = document.getElementById('topic');
 var name = document.getElementById('rollno');
 var rollno = document.getElementById('name');
 
 if(!(name.value=="")){
	 name.readOnly="true";
	 //name.disabled="true";
 }
 if(!(rollno.value=="")){
	 //rollno.disabled="true";
	 rollno.readOnly = "true";
 }
	
	dept.addEventListener('change' , function(){
		 var val = dept.options[dept.selectedIndex].value;
		 op1="";
		 op2=0;
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
		 
	subject.addEventListener('change' , function(){
		 var op2 = subject.options[subject.selectedIndex].value;
		 var cval = clse.options[clse.selectedIndex].value;
		 var op1 = 'sub_id';
		fetch(topic ,'class_id',cval , op1 , op2);
		 });
	
	
	
});

 function fetch(element , id2 ,pid , op1 , op2){
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
				 option.id=cls[i];
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
 
 
 
 