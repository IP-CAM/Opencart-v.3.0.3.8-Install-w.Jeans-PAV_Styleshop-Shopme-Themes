<?php echo $header; ?>
  
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6';
		$iid="rightside"; ?>
    <?php } elseif ($column_left ) { ?>
    <?php $class = 'col-md-9 col-sm-12 pull-right';
	$iid="rightside";
	 ?>
	 <?php } elseif ( $column_right) { ?>
    <?php $class = 'col-md-9 col-sm-12'; 
	$iid="leftside";
	?>
	
    <?php } else { ?>
    <?php $class = 'class="col-md-6 col-sm-6 col-xs-12 text-left"'; ?>
    <?php } ?>

    <div id="wrapper" class="row">
     
        <section class="section normalheader" >
            <div class="container" >
                <div class="page-header text-center">
                    <h1><?php echo $heading_title; ?></h1>
                    <div class="bread">
                        <ol class="breadcrumb">
                          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
                        </ol>
                    </div><!-- end bread -->
                </div>
            </div>
        </section>
<div style="clear:both"></div>
        <section class="section white"> 
            <div class="container" id="content">
                <div class="row">
				 <div id="<?php echo $iid; ?>" class="<?php echo $class; ?>">
				
				
	   <?php if ($products) { ?>
                        <div class="product-filter">
                            <div class="row">
                                <div class="col-md-3">
								 <select id="input-sort" class="form-control input-sm" onchange="location = this.value;">
				<?php foreach ($sorts as $sorts) { ?>
				<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
			<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
				<?php } else { ?>
			<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
				<?php } ?>
				<?php } ?>
 			</select>
                                   
                                </div>
                                <div class="col-md-2">
								
									<select id="input-limit" class="form-control input-sm" onchange="location = this.value;">
					<?php foreach ($limits as $limits) { ?>
					<?php if ($limits['value'] == $limit) { ?>
				<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
					<?php } else { ?>
				<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
					<?php } ?>
					<?php } ?>
 				 </select>
				 
                                </div>
                                <div class="display">
                                    <!--<small>Views:</small>
									
                                    <a href="shop-layout-1.html"><i class="fa fa-th"></i></a>
                                    <a href="shop-layout-2.html"><i class="fa fa-th-list"></i></a>-->
                                </div>
                            </div>      
                        </div><!-- end msidebar -->

                        <div class="list-shop row">
                         
                       
                     <?php foreach ($products as $product) {?>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shop-item">   
                                    <div class="entry">
                                        <a class="hover-image" href="<?php echo $product['href']; ?>" title="">
                                            <div class="img-rotate">
				
                                                <img src="<?php echo $product['thumb']; ?>"  alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" >
                                                <img src="<?php echo $product['thumb']; ?>" class="rotate-image"  alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" >
                                            </div>  
                                        </a>
                                        <div class="shop-item-title text-center clearfix">
                                            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                                            <div class="shopmeta clearfix">
                                              <span>  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                <?php echo $product['special']; ?><del><?php echo $product['price']; ?></del>
                  <?php } ?></span>
				  
				   
										
										
                                                <!-- end rating -->
                                            </div><!-- end shop-meta -->
                                        </div><!-- end shop-item-title -->
                                    </div><!-- entry -->
                                    <div class="visible-buttons">
                                        <a title="Add to Cart" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="icon-handbag"></span></a>
                                        <a title="Wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span class="icon-heart"></span></a>
                                        <a title="Compare" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span class="icon-star"></span></a>
                                    </div><!-- end buttons -->
                                </div><!-- end relative -->
                            </div>
							
						<?php } ?>	
						
					
                        </div><!-- end row -->

                        <hr class="invis">

                        <div class="row">
                            <div class="col-md-12">
                                <nav> <div class="col-sm-6 text-left results"><?php echo $results; ?></div>
        <div class="col-sm-6 text-right"><?php echo $pagination; ?></div>
                                </nav>
                            </div><!-- end col -->
                        </div><!-- end row -->
						
						<?php } ?>
						
							   <?php if ( !$products) { ?>
    <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-white"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
                    </div><!-- end col -->
  <?php echo $column_left; ?>  <?php echo $column_right; ?> 
                    <!-- end col -->
                </div><!-- end row -->
            </div>
        </section>        

   <?php echo $content_bottom; ?><!-- end section -->
              
     <?php echo $footer; ?>
    </div><!-- end wrapper -->

 

</body>
</html>