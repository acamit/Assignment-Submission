
function loadfiles(path){

		if(window.XMLHttpRequest){
			xmlhttp = new XMLHttpRequest();
		}
		else{
			xmlhttp = new ActiveXObject('MICROSOFT.XMLHTTP');
		}
		xmlhttp.onreadystatechange = function(){
			if(xmlhttp.readyState==4 && xmlhttp.status ==200){
				document.getElementById('div').innerHTML = xmlhttp.responseText;
				
				
			}
		}
		
				var node = document.getElementById("download");  
				node.setAttribute("href" , "zip.php?zip="+path);
				
		xmlhttp.open('GET' , 'fileList.php?path='+path , true);
		xmlhttp.send();
	}
	
	$(document).ready(function(){

		$(".column").click(function() {
			$('.modal')	
			.modal('show')
			;
		});
	});