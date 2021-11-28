<!DOCTYPE html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } $mytemplate="shopme";?>
    <meta name="author" content="">
  

    <title><?php echo $title; ?></title>

    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/simple-line-icons.css">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/flexslider.css">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/carousel.css">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/animate.css">
  
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/menu-alt.css">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/style.css">
<link href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/glasscase.css" rel="stylesheet">
    <!-- COLORS -->
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $mytemplate; ?>/stylesheet/custom.css">
	<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
	<?php echo $analytic; ?>
	<?php } ?>
	
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
 <script type="text/javascript" src="catalog/view/javascript/js/modernizr.custom.js"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>


<script src="catalog/view/javascript/common.js" type="text/javascript"></script>

</head>
<body>  


    <div id="loader">
        <div class="loader-container">
            <img src="image/loader.gif" alt="" class="loader-site">
        </div>
    </div>

    <div id="wrapper">
        <div class="topbar">
            <div class="container">
                <div class="topbar-wrapper row clearfix">
                    <div class="col-md-6 col-sm-6 col-xs-12 text-left">
                        <ul class="list-inline">
						 <li>
                              <?php if(isset($facebook)) { ?>  <a class="social" href="<?php echo $facebook; ?>"><i class="fa fa-facebook"></i></a> <?php } ?>
                                <?php if(isset($twitter)) { ?> <a class="social" href="<?php echo $twitter; ?>"><i class="fa fa-twitter"></i></a> <?php } ?>
                                <?php if(isset($googleplus)) { ?> <a class="social" href="<?php echo $googleplus; ?>"><i class="fa fa-google-plus"></i></a> <?php } ?>
                                <?php if(isset($pintrace)) { ?> <a class="social" href="<?php echo $pintrace; ?>"><i class="fa fa-pinterest"></i></a> <?php } ?>
                                <?php if(isset($linkedin)) { ?> <a class="social" href="<?php echo $linkedin; ?>"><i class="fa fa-linkedin"></i></a> <?php } ?>
                            </li>
                           
                            <li class="dropdown">
                                <a class="dropdown-toggle" href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" ><?php echo $text_account; ?><span class="fa fa-angle-down"></span></a>
                                 <ul class="dropdown-menu" role="menu">
                                 <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
                            </ul>
                            </li>
                        </ul>
                    </div><!-- end right -->
                    <div class="col-md-6 col-sm-6 col-xs-12 text-right">
                        <div class="btn-group">
						 <?php echo $language; ?>
                          
                        </div><!-- /btn-group -->
                        <div class="btn-group">
                              <?php echo $currency; ?>
                        </div>
                        <div class="btn-group">
                            <a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>" class="btn btn-default"><i class="fa fa-star-o"></i> <?php echo $text_checkout; ?></a>
                        </div>
                        <div class="btn-group">
                            <a href="<?php echo $wishlist; ?>" class="btn btn-default" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart-o"></i> <?php echo $text_wishlist; ?></a>
                        </div>
                    </div><!-- end left -->
                </div><!-- end topbar-wrapper -->
            </div><!-- end container -->
        </div><!-- end topbar -->

        <header class="header header-relative">
            <div class="container">
                <nav class="navbar yamm navbar-default">
                    <div class="container-full">
                        <div class="navbar-table">
                            <div class="navbar-cell">
                                <div class="navbar-header">
								
                                   <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
                                    <div>
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="fa fa-bars"></span>
                                        </button>
                                    </div>
                                </div><!-- end navbar-header -->
                            </div><!-- end navbar-cell -->

                            <div class="navbar-cell stretch">
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                                    <div class="navbar-cell">
                                        <ul class="nav navbar-nav navbar-right">
										<?php if ($categories) { ?>
										 <?php foreach ($categories as $category) { ?>
                                            <li class="dropdown megamenu yamm-half"><a href="<?php echo $category['href']; ?>"  class="dropdown-toggle"><?php echo $category['name']; ?>  <?php if ($category['children']) { ?> <b class="fa fa-angle-down"></b><?php } ?></a>
                                             <?php if ($category['children']) { ?> 
											
							
											    <ul class="dropdown-menu">
                                                    <li>
                                                    <div class="yamm-content">
                                                        <div class="row">
		<?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                            <div class="col-md-4 col-md-4">
                                                                <div class="box">
																
                                                                    <ul class="check">
                                                                        <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
                                                                    </ul> 
                                                                </div><!-- end box -->
                                                            </div><!-- end col --><?php } ?>
                                                            <!-- end col -->
                                                        </div>
                                                    </div><!-- end ttmenu-content -->
                                                    </li>
                                                </ul>
												
												<?php } ?>
                                            </li><!-- end mega menu -->
											
										<?php }} ?> 	
											
                                          
                                            <!-- end mega menu -->
                                            
                                            
                                            
                                           
                                            <li class="dropdown has-submenu shopcartmenu">
											<?php echo $cart; ?>
											
                                                
                                                
                                            </li>
                                        </ul>
                                    </div><!-- end navbar-cell -->
                                </div><!-- /.navbar-collapse -->        
                            </div><!-- end navbar cell -->
                        </div><!-- end navbar-table -->
                    </div><!-- end container fluid -->
                </nav><!-- end navbar -->
            </div><!-- end container -->
        </header>

           

