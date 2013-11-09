
var set_parent="";
var page_title = "";

function dir_init (){

	var remoteFile = domain+"index.php/dir/getcats/0/json";
	$.getJSON(remoteFile, function(data) {
		console.log("cat json success");
		write_cats(data);

	});
}
function write_cats (data){
	var html="";
	set_parent = data[0].parent;
	if(data[0].parent!=0){
		html+="<div>"+"<span class='action' id='0' rel='getkids'>Back</span></div>";

	}

	html += "<ul>";
	$(data).each(function(index, element){


		console.log(element.title+":"+element.haskids);
		html +="<li>"+"<span class='action' id='"+element.cid+"' rel='"+(element.haskids ?  "getkids" :  "getentries")+"'>"+element.title + "</span></li>";

	});
	$("#dir_content").html(html);
	run_links();
}
function generaterow(id,rel,label,icon){
var html ='<div class="icon-block left"><span class="icon"></span></div>';
}
function write_entries(data){
	var html="";

	html+="<div>"+"<span class='action' id='"+set_parent+"' rel='getkids'>Back</span></div>";
	
	html +="<ul>";

	$(data).each(function(index,element){
		console.log(element.title+":"+element.id);
		html +="<li>"+"<span class='action' id='"+element.id+"' rel='getdetails'>"+element.title + "</span></li>";

	});
	$("#dir_content").html(html);

	run_links();
}

function write_details(data){
	console.log("write details");
	var html="";

	html+="<div>"+"<span class='action' id='"+data[0].cid+"' rel='getentries'>Back</span></div>";
	
	html +="<ul>";
	var entry = new Array();
	var entrydata = data[0];

	console.log(entrydata.desc);

	html +="<li>"+"<span class='action' id='title' rel=''>"+entrydata.title + "</span></li>";
	html +="<li>"+"<span class='action' id='cattitle' rel=''>"+entrydata.cattitle + "</span></li>";
	html +="<li>"+"<span class='action' id='desc' rel=''>"+entrydata.desc + "</span></li>";
	html +="<li>"+"<span class='action' id='phone' rel=''>"+entrydata.phone + "</span></li>";
	html +="<li>"+"<span class='action' id='address' rel=''>"+entrydata.address + "</span></li>";
	html +="<li>"+"<span class='action' id='url' rel=''>"+entrydata.url + "</span></li>";
	html +="<li>"+"<span class='action' id='rating' rel=''>"+entrydata.rating + "</span></li>";
	$("#dir_content").html(html);

run_links();
}


function getdetails(id){
	console.log("getdetails");
	var remoteFile = domain+"index.php/dir/getentry/"+id+"/json";
	$.getJSON(remoteFile, function(data) {
		console.log("entry json success:"+data[0].id);
		write_details(data);

	});
}
function run_links(){

	$("span.action").each(function(index, element){

		//console.log($(element).attr("rel"));
		$(element).click(function(){		
			console.log("click:"+$(element).attr("rel")+"("+element.id+")")
			eval ($(element).attr("rel")+"("+element.id+")");

		});

	});
}

function getkids(parent){
	console.log("getkids");
	var remoteFile = domain+"index.php/dir/getcats/"+parent+"/json";
	$.getJSON(remoteFile, function(data) {
		console.log("subcats json success:"+data[0].parent);
		set_parent = data[0].parent;
		write_cats(data);

	});

}
function getentries(cid){
	var remoteFile = domain+"index.php/dir/getentries/"+cid+"/json";
	$.getJSON(remoteFile, function(data) {
		if(data.length>0){
			console.log("entries json success:"+data[0].cid);

			write_entries(data);
		}else{
			alert("No Entries");
		}

	});

}