<?php echo $header; ?>
<div id="home_container" class="container-fluid">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
        <br>
        <?php echo $content_top; ?>
        <div class="row">
            <div id="side_blue_wrapper_1" class="col-md-5 col-sm-12 col-xs-12">
                <div class="side_blue col-md-12">
                    <h1>&nbsp;</h1>
                </div>
            </div>
            <div id="text_featured_products" class="col-md-2 col-sm-12 col-xs-12">
                <h1><?php echo strtoupper($text_featured_products); ?></h1>
            </div>
            <div id="side_blue_wrapper_2" class="col-md-5 col-sm-12 col-xs-12">                
                <div class="side_blue col-md-12">
                    <h1>&nbsp;</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <?php //Featured Products Content ?>
            <div class="col-md-12"><?php echo $content_bottom; ?></div>
        </div>
        <div id="parts_services_row" class="row">
            <div class="col-md-12">
                <center><h1><?php echo $text_parts_services; ?></h1></center>
            </div>
            <?php if($html_parts_services):  ?>
                <div class="container">
                    <div class="col-md-7">
                        <?php echo html_entity_decode($html_parts_services['description']); ?>
                    </div>
                    <div class="col-md-5">
                        <img src="catalog/view/theme/default/stylesheet/backgrounds/home/services_image.png"> 
                    </div>  
                </div>
            <?php endif; ?>
        </div>
    </div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>