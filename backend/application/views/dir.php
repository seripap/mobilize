<h1><? echo $title;?></h1>

<ul> 
<?
foreach ($cats as $key => $cat) {
	echo "<li>".
	
	 "<span class='actiion' id='".$cat->cid."' rel='".($cat->haskids ?  "getkids" :  "getentries")."'>".$cat->title . "".
	
	 "</li>";
}

?>
</ul>