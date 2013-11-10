<script>
$(function() {
	$('footer').hide();
});
</script>
<div id="infoMessage"><?php echo $message;?></div>
<?php $attributes = array('class' => 'registration-form'); ?>
<?php echo form_open("auth/register", $attributes);?>
            <div class="registration-wrapper">
                  <div class="label-block">
                        <label id="first_name">First Name</label>
                  </div>
                  <div class="input-block">
                        <?php echo form_input($first_name);?>
                  </div>
            </div>
            <div class="registration-wrapper">
                  <div class="label-block">
                        <label id="last_name">Last Name</label>
                  </div>
                  <div class="input-block">
                       <?php echo form_input($last_name);?>
                  </div>
            </div>
            <div class="registration-wrapper">
                  <div class="label-block">
                        <label id="email">Email Address</label>
                  </div>
                  <div class="input-block">
                        <?php echo form_input($email);?>
                  </div>
            </div>
            <div class="registration-wrapper">
                  <div class="label-block">
                        <label id="phone">Phone Number</label>
                  </div>
                  <div class="input-block">
                        <?php echo form_input($phone);?>
                  </div>
            </div>
            <div class="registration-wrapper">
                  <div class="label-block">
                        <label id="phone">Password</label>
                  </div>
                  <div class="input-block">
                        <?php echo form_input($password);?>
                  </div>
            </div>
            <div class="registration-wrapper">
                  <div class="label-block">
                        <label id="phone">Confirm Password</label>
                  </div>
                  <div class="input-block">
                        <?php echo form_input($password_confirm);?>
                  </div>
            </div>
            <div class="chat-input">
            				<span style="position:relative; display:block; float:right; right: 15px;"><?php echo form_submit('submit', 'Send');?></span>
                  </div>
          </div>
      <?php echo form_close();?>
