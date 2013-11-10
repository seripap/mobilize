<div class="logo fullsize">
  <img src="/images/logo_red.png">
</div>
<br/><br/>
<div class="login-button facebook">
  <div class="table-wrapper">
    <div class="icon-block facebook">
      <span class="icon icon-facebook"></span>
    </div>
    <div id="loginWithFB" class="title-block">
      <p class="title">Sign In with Facebook</p>
    </div>
  </div>
</div>
<div class="register">

<center><div><?php echo $message;?></div>

  <?php echo form_open("auth/login");?>

  <p>
    <?php echo lang('login_identity_label', 'identity');?>
    <?php echo form_input($identity);?>
  </p>

  <p>
    <?php echo lang('login_password_label', 'password');?>
    <?php echo form_input($password);?>
  </p>

  <p style="font-size: 0.8em;">
    <?php echo lang('login_remember_label', 'remember');?>
    <?php echo form_checkbox('remember', '1', FALSE, 'id="remember"');?>
  </p>

  <p><?php echo form_submit('submit', lang('login_submit_btn'));?></p>

  <?php echo form_close();?>

  </center>
  <div style="margin-top: 2em;">
  <span>No Account? Sign up <a href="http://local.o0h.org/index.php/register">here</a></span>
  <br/>
  <span>Need to retrieve your password? Get it <a href="http://local.o0h.org/index.php/forgot_password">here</a></span>
  </div>
</div>
