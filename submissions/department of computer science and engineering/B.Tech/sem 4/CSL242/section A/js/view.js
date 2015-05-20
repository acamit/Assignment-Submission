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
	
	function loaddata( id, path , name , date){
			$('#path').val(path);
			$('#id').val(id);
			$('#discard_path').val(path);
			$('#discard_id').val(id);
			$('#topic').val(name);
			date = date.split("-");
			$('#year').val(date[0]);
			$('#month').val(date[1]);
			$('#day').val(date[2]);
	}
	
	$(document).ready(function(){

		$(".check.column").click(function() {
			$('.first.modal')	
			.modal('show')
			;
		});
		
		$(".edit.column").click(function() {
			
			
			$('.second.modal')	
			.modal('show');
		});
	});