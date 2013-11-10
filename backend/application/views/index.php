
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
        <a href="http://o0h.org/index.php/chat/<?php echo $user->id; ?>">
        <div class="portrait-block">
            <img src="http://o0h.org/images/art.jpg" class="rounded">
            <div class="bg-extension"></div>
        </div>
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

<ul class="list indented users">

        <?php foreach ($users as $user):?>
            <?php if ($user->id > 3): ?>
                    <li>
        <a href="http://o0h.org/index.php/chat/<?php echo $user->id;?>">
        <div class="portrait-block">
        <?php if ($user->img): ?>
            <img src="https://graph.facebook.com/me/picture?type=normal&access_token=<?php echo ($user->token);?>" height="112" width="112" class="rounded">
        <?php else: ?>
            <img src="http://o0h.org/images/<?php echo strtolower($user->first_name);?>.jpg" class="rounded">
        <?php endif; ?>
            <div class="bg-extension"></div>
        </div>
        <div class="block-wrapper">
            <div class="block-table">
                <div class="text-block">
                    <p class="title" style="font-weight:bolder"><?php echo $user->first_name;?> <?php echo $user->last_name;?></p>
                    <p class="desc"><span class="icon icon-comments"></span>Tap to message</p>
                </div>
                <!--div class="availability-block">
                    <p class="unavailable">NEW</p>
                </div -->
            </div>
        </div>
        </a>
    </li>
        <?php endif;?>
        <?php endforeach;?>
</ul>

<?php } ?>
