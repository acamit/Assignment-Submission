
window.addEventListener('load' , function(){
});
	
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
		
		
		xmlhttp.open('GET' , 'fileList.php?path='+path , true);
		xmlhttp.send();
	}
	$(document).ready(function(){

		$(".check.column").click(function() {
			$('.first.modal')	
			.modal('show')
			;
		});
		
		$(".edit.column").click(function() {
			$('.second.modal')	
			.modal('show')
			;
		});
	});