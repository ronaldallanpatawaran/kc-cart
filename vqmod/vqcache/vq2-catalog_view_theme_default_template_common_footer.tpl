<div id="footer_logos" class="container-fuild">
  <div id="footer_title_col" class="col-md-12">
    <center><span id="footer_title">- We’re a Brand specialist of -</span></center>
  </div>
  <div class="container">
    <div class="row">
      <div class=" logos_col col-md-3 col-sm-6">
        <img src="catalog/view/theme/default/stylesheet/backgrounds/home/Layer-28-1.png">
      </div>
      <div class=" logos_col col-md-3 col-sm-6">
        <img src="catalog/view/theme/default/stylesheet/backgrounds/home/Detroit_Diesel_lang_logo-1.png">
      </div>
      <div class=" logos_col col-md-3 col-sm-6">
        <img src="catalog/view/theme/default/stylesheet/backgrounds/home/Layer-30-1.png">
      </div>
       <div class=" logos_col col-md-3 col-sm-6">
        <img src="catalog/view/theme/default/stylesheet/backgrounds/home/caterpillar-logo-download-i14.png">
      </div>
    </div>
  </div>
</div>
<footer>
  <div id="top" class="col-md-12">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12 ">
                  <label class="footer_labels"><?php echo $text_parts_services; ?></label>
                  <br><br>
                  <span><?php echo $telephone; ?></span>
                  <br>
                  <span><?php echo $address; ?></span>
                  <br><br>
                  <a href="<?php echo $contact; ?>"><button class="btn_yellow"><?php echo $button_contactus; ?></button></a>
              </div>
                <div class="col-md-4 col-sm-6 col-xs-12 ">
                  <label class="footer_labels"><?php echo $text_product_categories; ?></label>
                  <br><br>
                  <?php 
                    if(isset($categories)): 
                      foreach ($categories as $category) {
                        echo "<a href='".$product_category."'><span>" . $category['name'] . "</span></a>";
                        echo "<br>";
                      }

                    endif;
                  ?><br>
                  <a href="<?php echo $product; ?>"><button class="btn_yellow"><?php echo $button_view_products; ?></button></a>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                  <label style="text-align: left;" class="footer_labels"><?php echo $text_legalities; ?>
                    <br><br><br>
                    <?php 
                      if(isset($informations)): 
                        foreach ($informations as $information) {
                          echo "<a href='".$information['href']."'><span>" . $information['title'] . "</span></a>";
                          echo "<br>";
                        }

                      endif;
                    ?> 
                  </label>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="footer_links" class="container-fluid">
      <div class="row">
        <div class="col-md-4 col-md-offset-1 col-xs-6">
          <span>© 2017 KC Parts &amp; Services Pte Ltd. All rights reserved.</span>
        </div>
        <div class="col-md-3 col-md-offset-4 col-xs-6">
          <span>Web design by <a href="https://www.firstcom.com.sg/">FirstCom Solutions.</a></span>
        </div>
      </div>
    </div>
  </footer>
<?php echo $mailchimp_integration; ?>
</body></html>