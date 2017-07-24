<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/default/stylesheet/bootstrap-text.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/default/stylesheet/bootstrap-equal-height.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap-dialog.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>">
<header>
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div id="menu_col" class="col-md-8">
        <nav id="menu" class="navbar">
          <div id="upper_top_links" class="col-md-12">
            <label>FOR SALES</label>&nbsp;&nbsp;&nbsp;<i class="email"></i> &nbsp; <a href="<?php echo $contact; ?>"><label><?php echo strtoupper('sales@kcparts.com.sg'); ?></label></a>&nbsp; <i class="telephone"></i> &nbsp; <a href="<?php echo $contact; ?>"><label>(65)-6254 8022</label></a>
          </div>
          <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_menu; ?></span>
            <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
          </div>
          <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
              <li><a href="<?php echo $home; ?>" <?php echo (isset($route) && $route=="common/home") ? 'class="active"' : '' ; ?>><?php echo $text_home; ?></a>
              </li>
              <li><a href="<?php echo $about; ?>" <?php echo (isset($route) && $route=="information/information") && isset($_GET['information_id']) && $_GET['information_id'] == 4 ? 'class="active"' : '' ; ?>><?php echo $text_about; ?></a>
              </li>
              <li>
                <a href="<?php echo $contact; ?>" <?php echo (isset($route) && $route=="information/contact") ? 'class="active"' : '' ; ?>><?php echo $text_contact; ?></a>
              </li>
              <li><a href="<?php echo $product; ?>" <?php echo (isset($route) && $route=="product/category") ? 'class="active"' : '' ; ?>><?php echo $text_product; ?></a>
              </li>
              <li><a href="<?php echo $login; ?>" <?php echo (isset($route) && $route=="account/login") ? 'class="active"' : '' ; ?>><?php echo $text_login; ?></a>
              </li>
              <li><a href="<?php echo $register; ?>" <?php echo (isset($route) && $route=="account/register") ? 'class="active"' : '' ; ?>><?php echo $text_register; ?></a>
              </li>
              <li><a href="<?php echo $shopping_cart; ?>" <?php echo (isset($route) && $route=="checkout/cart") ? 'class="active"' : '' ; ?>><?php echo $text_shopping_cart; ?></a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </div>
  </div>
</header>
<?php if ($content_header) { ?>
<div class="container">
  <div class="row">
    <div class="col-sm-12"><?php echo $content_header; ?></div>
  </div>
</div>
<?php } ?>