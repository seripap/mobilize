<h1><?php echo lang('login_heading');?></h1>
<p><?php echo lang('login_subheading');?></p>

<div id="infoMessage"><?php echo $message;?></div>

<?php echo form_open("auth/login");?>

  <p>
    <?php echo lang('login_identity_label', 'identity');?>
    <?php echo form_input($identity);?>
  </p>

  <p>
    <?php echo lang('login_password_label', 'password');?>
    <?php echo form_input($password);?>
  </p>

  <p>
    <?php echo lang('login_remember_label', 'remember');?>
    <?php echo form_checkbox('remember', '1', FALSE, 'id="remember"');?>
  </p>


  <p><?php echo form_submit('submit', lang('login_submit_btn'));?></p>

<?php echo form_close();?>

<p><a href="forgot_password"><?php echo lang('login_forgot_password');?></a></p>
<p><a href="register">Register</a></p>


<div class="logo fullsize">
    <img src="/images/logo_red.png">
</div>
<br/><br/>
<div class="login-button facebook">
    <div class="table-wrapper">
        <div class="icon-block facebook">
            <span class="icon icon-facebook"></span>
        </div>
        <div class="title-block"> 
            <p class="title">Sign In with Facebook</p>
        </div>
    </div>
</div>
<div class="login-button lnfaccount">
    <div class="table-wrapper">
        <div class="icon-block facebook">
            <span class="icon icon-user"></span>
        </div>
        <div class="title-block"> 
            <p class="title">Sign In with LnF Account</p>
        </div>
    </div>
</div>
<div class="register">
    <span>No Account? Sign up <a href="#">here</a></span>
    <br/>
    <span>Need to retrieve your password? Get it <a href="#">here</a></span>
</div>
