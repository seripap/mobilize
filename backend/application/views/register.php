<h1>Register</h1>
<p>Enter your details below</p>

<div id="infoMessage"><?php echo $message;?></div>

<?php echo form_open("auth/register");?>
      <form class="registration-form">
            <div class="registration-wrapper">
                  <div class="label-block">
                        <label id="firstName">First Name</label>
                  </div>
                  <div class="input-block">
                        <input type="text" id="firstName" name="First Name">
                  </div>
            </div>
            <div class="registration-wrapper">
                  <div class="label-block">
                        <label id="lastName">Last Name</label>
                  </div>
                  <div class="input-block">
                        <input type="text" id="lastName" name="Last Name">
                  </div>
            </div>
            <div class="registration-wrapper">
                  <div class="label-block">
                        <label id="emailAddr">Email Address</label>
                  </div>
                  <div class="input-block">
                        <input type="text" id="emailAddr" name="Email Address">
                  </div>
            </div>
            <div class="registration-wrapper">
                  <div class="label-block">
                        <label id="dob">Date of Birth</label>
                  </div>
                  <div class="input-block">
                        <input type="text" id="dob" name="Date of Birth">
                  </div>
            </div>
            <div class="chat-form">
                  <div class="chat-input">
                        <input type="submit" value="Send" style="position:relative; display:block; float:right; right: 15px;">
                  </div>
          </div>
      </form>
<?php echo form_close();?>

<!--
<?php echo form_open("auth/register");?>

      <p>
            <?php echo lang('create_user_fname_label', 'first_name');?> <br />
            <?php echo form_input($first_name);?>
      </p>

      <p>
            <?php echo lang('create_user_lname_label', 'first_name');?> <br />
            <?php echo form_input($last_name);?>
      </p>


      <p>
            <?php echo lang('create_user_email_label', 'email');?> <br />
            <?php echo form_input($email);?>
      </p>

      <p>
            <?php echo lang('create_user_phone_label', 'phone');?> <br />
            <?php echo form_input($phone);?>
      </p>

      <p>
            <?php echo lang('create_user_password_label', 'password');?> <br />
            <?php echo form_input($password);?>
      </p>

      <p>
            <?php echo lang('create_user_password_confirm_label', 'password_confirm');?> <br />
            <?php echo form_input($password_confirm);?>
      </p>


      <p><?php echo form_submit('submit', lang('create_user_submit_btn'));?></p>


<?php echo form_close();?>
-->
