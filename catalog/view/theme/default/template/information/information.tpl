<?php echo $header; ?>
<?php echo $common_banner; ?>
<div class="container" style="margin-top: 50px;">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">
    <div id="content" class="<?php echo $class; ?>">
      <div class="row">
        <div id="about_content_links" class="col-md-12">
          <center><h1 class="page-title"><?php echo strtoupper($heading_title); ?></h1></center>
          <br>
          <center>
            <a href="<?php echo $profile; ?>"><label class="<?php echo $profile_active_class; ?>"><?php echo $text_profile; ?></label></a>&nbsp;
            <a href="<?php echo $history; ?>"><label class="<?php echo $history_active_class; ?>"><?php echo $text_history ?></label></a>&nbsp;
            <a href="<?php echo $mission_values; ?>"><label class="<?php echo $mission_values_active_class; ?>"><?php echo $text_mission_and_values; ?></label></a>
          </center>
        </div>
      </div>
      <div class="row">
        <div id="about_content" class="col-md-8">
          <br><br>
          <?php echo $description; ?>
        </div>
        <div id="about_side_image" class="col-md-4">
          <img src="http://localhost/e-commerce/kc-cart/image/catalog/banners/General/Layer-35.png" />
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>