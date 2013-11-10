<?php if (!$admin) { ?>
<ul class="list indented users">
    <li>
        <div class="portrait-block">
            <img src="http://o0h.org/images/lnf_contact.jpg" class="rounded">
            <div class="bg-extension"></div>
        </div>
        <a href="tel:+16788567825">
        <div class="block-wrapper">
            <div class="block-table">
                <div class="text-block">
                    <p class="title" style="font-weight:bolder">Hotline</p>
                    <p class="desc"><span class="icon icon-phone"></span>Tap to call</p>
                </div>
                <div class="availability-block">
                    <p class="available">AVAILABLE</p>
                </div>
            </div>
        </div>
        </a>
    </li>
    <li>
        <div class="portrait-block">
            <img src="http://o0h.org/images/art.jpg" class="rounded">
            <div class="bg-extension"></div>
        </div>
        <a href="index.php/chat/1">
        <div class="block-wrapper">
            <div class="block-table">
                <div class="text-block">
                    <p class="title" style="font-weight:bolder">Art</p>
                    <p class="desc"><span class="icon icon-comments"></span>Tap to message</p>
                </div>
                <div class="availability-block">
                    <p class="available">AVAILABLE</p>
                </div>
            </div>
        </div>
        </a>
    </li>
    <li>
        <div class="portrait-block">
            <img src="http://o0h.org/images/jason.jpg" class="rounded">
            <div class="bg-extension"></div>
        </div>
        <div class="block-wrapper">
            <div class="block-table">
                <div class="text-block">
                    <p class="title" style="font-weight:bolder">Jason</p>
                    <p class="desc"><span class="icon icon-comments"></span>Tap to message</p>
                </div>
                <div class="availability-block">
                    <p class="unavailable">UNAVAILABLE</p>
                </div>
            </div>
        </div>
    </li>
    <li>
        <div class="portrait-block">
            <img src="http://o0h.org/images/justin.jpg" class="rounded">
            <div class="bg-extension"></div>
        </div>
        <div class="block-wrapper">
            <div class="block-table">
                <div class="text-block">
                    <p class="title" style="font-weight:bolder">Justin</p>
                    <p class="desc"><span class="icon icon-comments"></span>Tap to message</p>
                </div>
                <div class="availability-block">
                    <p class="unavailable">UNAVAILABLE</p>
                </div>
            </div>
        </div>
    </li>
</ul>

<?php } else { ?>

<h1 style="font-size:2em;">Open conversations</h1>

<?php


foreach ($results as $key) {
    foreach ($key as $k => $v) {
        echo $k . " " . $v . " <br />";
    }
}


?>

<?php } ?>
<div id="infoMessage"><?php echo $message;?></div>
