<?php echo $header; ?>
<?php echo $common_banner; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-10 col-sm-offset-1 end'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <div class="col-md-6">
          <h2 class="catalog_accounts_label"><?php echo $text_my_account; ?></h2>
          <ul class="catalog_accounts list-unstyled">
            <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
            <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
            <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          </ul>
        </div>
        <div class="col-md-6">
            <h2 class="catalog_accounts_label"><?php echo $text_my_orders; ?></h2>
            <ul class="catalog_accounts list-unstyled">
              <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
              <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
              <?php if ($reward) { ?>
              <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
              <?php } ?>
              <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
              <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
              <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
            </ul>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <h2 class="catalog_accounts_label"><?php echo $text_my_newsletter; ?></h2>
          <ul class="catalog_accounts list-unstyled">
            <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          </ul>
        </div>
      </div>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</div>
<?php echo $footer; ?>