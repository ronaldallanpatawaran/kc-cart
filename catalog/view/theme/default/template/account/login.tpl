<?php echo $header; ?>
<?php echo $common_banner; ?>
<div class="container" style="margin-top: 100px;">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <div class="col-sm-6">
          <h3 class="login_labels"><?php echo strtoupper($text_returning_customer); ?></h3>
          <p>&nbsp;</p>
          <div class="login_well well">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <div class="row">
                  <div class="col-md-4">
                    <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                  </div>
                  <div class="col-md-8">
                    <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-md-4">
                     <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
                  </div>
                  <div class="col-md-8">
                    <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
                  <br>
                  <button id="login_button" type="submit" class="right btn_yellow"><?php echo $button_login; ?></button>
                <?php if ($redirect) { ?>
                <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                <?php } ?>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="col-sm-6">
          <h3 class="login_labels"><?php echo strtoupper($text_new_customer); ?></h3>
          <p>&nbsp;</p>
          <div class="well login_well">
            <p><strong><?php echo $text_register; ?></strong></p>
            <p><?php echo $text_register_account; ?></p>
            <a href="<?php echo $register; ?>"><button id="btn_continue" class="right btn_yellow"><?php echo $button_continue; ?></button></a>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>