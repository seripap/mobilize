
var set_parent="";
var page_title = "";

function dir_init (){
$("#pagetitle").html('Services');
	
	var remoteFile = domain+"index.php/dir/getcats/0/json";
	$.getJSON(remoteFile, function(data) {
		console.log("cat json success");
		write_cats(data);
		bodyScroll = new iScroll('wrapper-content', {
			checkDOMChanges: true,
			onBeforeScrollStart: function (e) {
				var target = e.target;
				while (target.nodeType != 1)
				target =target.parentNode;

				if (target.tagName != 'SELECT' && target.tagName != 'INPUT' && target.tagName != 'TEXTAREA'){
					e.preventDefault();
				}
			},
			bounce:true,
			momentum:true,
			preventGhostClick:true
		});

		document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);
	});
}
function write_cats (data){
	var html="";
	set_parent = data[0].parent;
	if(data[0].parent!=0){
		console.log('parent !=0')
		//html+="<div>"+"<span class='action back' id='0' rel='getkids'>Back</span></div>";
		$('.back_btn').attr('rel',"getkids").attr('id','0');

	}else{
		console.log("parent else");
		$("#pagetitle").html('Services');
	}

	html += '<ul class="list indented directory">';
	$(data).each(function(index, element){


		console.log(element.title+":"+element.haskids);
		html += generaterow(element.cid,(element.haskids ?  "getkids" :  "getentries"),element.title);
		
	});
	html += "</ul>";
	
		$("#dir_content").html(html);
	
	run_links();
}

function generaterow(id,rel,label)
{
var html ='';
html +="<li class='action' id='"+id+"' rel='"+rel+"'>";
html+='<div class="icon-block left"><span class="icon"></span></div>';
html +='<div class="text-block"><p class="title">'+label+'</p></div>';
html +='<div class="icon-block right"><span class="icon icon-angle-right"></span></div>';
html +='</li>';
return html;
}
function write_entries(data){
	var html="";
$("#pagetitle").html(data[0].cattitle);
	//html+="<div>"+"<span class='action back' id='"+set_parent+"' rel='getkids'>Back</span></div>";
	$('.back_btn').attr('rel',"getkids").attr('id',set_parent);
	html += '<ul class="list indented directory">';

	$(data).each(function(index,element){
		console.log(element.title+":"+element.id);
		html += generaterow(element.id,"getdetails",element.title);
		//html +="<li>"+"<span class='action' id='"+element.id+"' rel='getdetails'>"+element.title + "</span></li>";

	});
	$("#dir_content").html(html);

	run_links();
}

function write_details(data){
	console.log("write details");
	var html="";
$("#pagetitle").html(data[0].title);
	//html+="<div>"+"<span class='action back' id='"+data[0].cid+"' rel='getentries'>Back</span></div>";
	$('.back_btn').attr('rel',"getentries").attr('id',data[0].cid);
	html += '<ul class="list indented directory">';

	var entry = new Array();
	var entrydata = data[0];

	console.log(entrydata.desc);
if(entrydata.phone.length==10){
var patt1 = /(...)(...)(....)/i;
var result = entrydata.phone.match(patt1);
var p = result;
var phonenum = p[1]+'-'+p[2]+'-'+p[3]
}else if (entrydata.phone.length>10){
	var patt1 = /(.)(...)(...)(....)/i;
var result = entrydata.phone.match(patt1);
var p = result;
var phonenum = p[1]+'-'+p[2]+'-'+p[3]+'-'+p[4];
}else {

	var phonenum = entrydata.phone;
}

entrydata.url = "<a href='http://"+entrydata.url+"'>"+entrydata.url+"</a>";
	html +=(entrydata.title ? "<li>"+"<span id='title' rel=''>"+entrydata.title + "</span></li>": "");
	html +=(entrydata.cattitle ? "<li><strong>Type: </strong>"+"<span id='cattitle' rel=''>"+entrydata.cattitle + "</span></li>": "");
	html +=(entrydata.desc ? "<li>"+"<span id='desc' rel=''>"+entrydata.desc + "</span></li>": "");
	html +=(phonenum ? "<li><strong>Call: </strong>"+"<span id='phone' rel=''>"+phonenum + "</span></li>": "");
	html +=(entrydata.address ? "<li><strong>Address: </strong><br />"+"<span id='address' rel=''>"+entrydata.address + "</span></li>": "");
	html +=(entrydata.url ? "<li><strong>Website: </strong>"+"<span id='url' rel=''>"+entrydata.url + "</span></li>": "");
	html +=(entrydata.rating ? "<li><strong>Rating: </strong>"+"<span id='rating' rel=''>"+entrydata.rating + "</span></li>": "");
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

	$(".action").each(function(index, element){
		if($(element).attr("rel")!=""){
		//console.log($(element).attr("rel"));
		$(element).click(function(){		
			console.log("click:"+$(element).attr("rel")+"("+element.id+")")
			$("#dir_content").fadeOut(300,function(){
			eval ($(element).attr("rel")+"("+element.id+")");
			$("#dir_content").fadeIn(300);
			});
			
		});
}
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