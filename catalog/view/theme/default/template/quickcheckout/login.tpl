<div id="login">
  <div class="col-sm-6 text-left">
	<label class="col-sm-3" for="input-login-email"><?php echo $entry_email; ?></label>
	<div class="col-sm-9">
	  <input type="text" name="email" value="" class="form-control" id="input-login-email" />
	</div>
  </div>
  <div class="col-sm-6 text-left">
	<label class="col-sm-3" for="input-login-password"><?php echo $entry_password; ?> <a href="<?php echo $forgotten; ?>" title="<?php echo $text_forgotten; ?>" data-toggle="tooltip"><i class="fa fa-question-circle"></i></a></label>
	<br>
	<div class="col-md-9">	
		<input type="password" name="password" value="" class="form-control" />
	</div>	
  </div>
  <br><br>	
  <div style="text-align: right; padding-right: 30px;">
  		<span class="input-group-btn">
	  		<input type="button" value="<?php echo $button_login; ?>" id="button-login" class="btn btn-primary" />
		</span></div>
</div>

<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-login').click();
	}
});
//--></script>   