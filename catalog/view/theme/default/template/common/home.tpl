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
        <?php echo $content_bottom; ?>
        <div class="row">
            <div id="side_blue_wrapper_1" class="col-md-5">
                <div class="side_blue col-md-12">
                    <h1>&nbsp;</h1>
                </div>
            </div>
            <div id="text_featured_products" class="col-md-2">
                <h1><?php echo strtoupper($text_featured_products); ?></h1>
            </div>
            <div id="side_blue_wrapper_2" class="col-md-5">                
                <div class="side_blue col-md-12">
                    <h1>&nbsp;</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
        </div>
    </div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>