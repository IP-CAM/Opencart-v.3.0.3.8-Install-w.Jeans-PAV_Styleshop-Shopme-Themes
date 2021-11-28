<section class="section white nopadtop"> 
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="general-title">
                            <h2><?php echo $heading_title; ?></h2>
                        </div>
                    </div><!-- end col -->
                </div>

                <div id="owl-4-col-2" class="owl-custom">
				
				 <?php foreach ($products as $product) { ?>
                    <div class="owl-item">
                        <div class="shop-item">   
                            <div class="entry">
                                <a class="hover-image" href="<?php echo $product['href']; ?>" title="">
                                    <div class="img-rotate">
                                       <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />  <img src="<?php echo $product['thumb']; ?>" class="rotate-image" alt="">
                                    </div>  
                                </a>
                                <div class="shop-item-title text-center clearfix">
                                    <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                                    <div class="shopmeta clearfix">
                                        <span> <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span ><?php echo $product['special']; ?></span> <del><?php echo $product['price']; ?></del>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?></span>
		
		
										
										
                                     <?php if ($product['rating']) { ?>
		<div class="rating">
		 <?php for ($i = 0; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] > $i) { ?>
                                            <i class="fa fa-star"></i>
                                            <?php } ?>
          <?php } ?>
                                        </div>
		  <?php } ?><!-- end rating -->
                                    </div><!-- end shop-meta -->
                                </div><!-- end shop-item-title -->
                            </div><!-- entry -->
                            <div class="visible-buttons">
                                <a title="Add to Cart"  onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class="icon-handbag"></span></a>
                                <a title="Wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span class="icon-heart"></span></a>
                                <a title="Compare" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span class="icon-star"></span></a>
                            </div><!-- end buttons -->
                        </div><!-- end relative -->
                    </div><!-- end col -->


<?php } ?>
                </div><!-- end row -->

                <hr class="invis">
				
				   </div>
        </section>