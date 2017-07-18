<?php echo $header; ?>
<?php echo $common_banner; ?>
<div class="container" style="margin-top: 100px;">
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
        <div id="form_col" class="col-md-4 col-xs-12">
          <p><a href=""><?php echo $text_site_title; ?></a></p>
          <p><?php echo $address; ?></p>
          <p>&nbsp;</p>
          <p><?php echo $fax; ?></p>
          <p><?php echo $telephone; ?></p>
          <h2 class="contacts_title"><?php echo $text_drop_as_message; ?></h2>
          <br>
          <form id="frm_contacts" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
            <fieldset>
              <h3><?php echo $text_contact; ?></h3>
              <div class="form-group required">
                <div class="col-sm-12">
                  <input type="text" name="name" placeholder="<?php echo $entry_name; ?>" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                  <?php if ($error_name) { ?>
                  <div class="text-danger"><?php echo $error_name; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <div class="col-sm-12">
                  <input type="text" name="email" placeholder="<?php echo $entry_email; ?>" value="<?php echo $email; ?>" id="input-email" class="form-control" />
                  <?php if ($error_email) { ?>
                  <div class="text-danger"><?php echo $error_email; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <div class="col-sm-12">
                  <input type="text" name="contact" placeholder="<?php echo $entry_contact; ?>" value="<?php echo $contact; ?>" id="input-contact" class="form-control" />
                  <?php if ($error_contact) { ?>
                  <div class="text-danger"><?php echo $error_contact; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <div class="col-sm-12">
                  <textarea name="enquiry" rows="10" id="input-enquiry" placeholder="<?php echo $entry_enquiry; ?>" class="form-control"><?php echo $enquiry; ?></textarea>
                  <?php if ($error_enquiry) { ?>
                  <div class="text-danger"><?php echo $error_enquiry; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php if ($site_key) { ?>
                <div class="form-group">
                  <div class="col-sm-12">
                    <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                    <?php if ($error_captcha) { ?>
                      <div class="text-danger"><?php echo $error_captcha; ?></div>
                    <?php } ?>
                  </div>
                </div>
              <?php } ?>
            </fieldset>
            <div class="buttons">
              <div class="pull-right">
                <button class="btn_yellow" type="submit"><?php echo $button_submit; ?></button>
              </div>
            </div>
          </form>
        </div>
        <div id="geo_col" class="col-md-8 col-xs-12">
          <div class="row">
            <div class="col-md-12">
                <h1 id="contacts_heading"><?php echo $heading_title; ?></h1>
            </div>
          </div>
          <?php echo $geocode; ?>
        </div>
      </div>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
