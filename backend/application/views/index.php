Hello <?php echo $user->first_name; ?> <?php echo $user->last_name; ?>. Your email is <?php echo $user->email; ?>

<?php if ($admin) { ?>
YOU AN ADMIN

<?php } else { ?>
<br />
<br />

<div>
Contact hotline
</div>

<div>
<a href="chat/1">Contact Art</a>
</div>

<div>
Contact Jason
</div>

<div>
Contact Matt Black
</div>

<?php } ?>

<div>
<ul>
<li><a href="index.php/">Chat</a></li>
<li><a href="index.php/dir">Directory</a></li>
<li><a href="logout">logout</a></li>
</ul>
</div>





<div id="infoMessage"><?php echo $message;?></div>
