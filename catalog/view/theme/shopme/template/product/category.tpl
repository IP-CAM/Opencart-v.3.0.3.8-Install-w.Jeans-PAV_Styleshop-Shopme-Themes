<?php echo $header; ?>

 <section class="section banner" style="background-image:url('<?php if ($thumbbanner) { ?> <?php echo $thumbbanner; ?><?php } ?>' );" data-img-width="1920" data-img-height="644" data-diff="100">
            <div class="container">
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
 <section class="section white"> 		
<div class="container">
 
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
     
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>
     
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
								 <select id="input-limit"  class="form-control input-sm" onchange="location = this.value;">
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
                                    <small>Views:</small>
								<?php
$url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
$valurl= str_replace("&pos=grid","",$url);
if(isset($_GET['pos']))
{
$url=$valurl;
}
else
{
$url=$valurl;
}
?>
                                    <a  href="<?php echo $url; ?>" ><i class="fa fa-th"></i></a>
                                    <a href="<?php echo $url; ?>&pos=grid" ><i class="fa fa-th-list"></i></a>
                                </div>
                            </div>      
                        </div>
						

<?php
if(isset($_GET['pos'])=='grid')
{

?>
<div class="list-shop">
                    

                  <?php foreach ($products as $product) { ?>      

                            <div class="row">
                                <div class="shop-item">   
                                    <div class="col-md-4 col-sm-4 col-xs-12">
                                        <div class="entry">
                                            <a class="hover-image" href="<?php echo $product['href']; ?>" title="">
                                                <div class="img-rotate">
											
                                                    <img src="<?php echo $product['thumb']; ?>" alt="">
                                                    <img src="<?php echo $product['thumb']; ?>" class="rotate-image" alt="">
                                                </div>  
                                            </a>
                                        </div><!-- entry -->
                                        <div class="visible-buttons">
                                            <a title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="icon-handbag"></span></a>
                                            <a title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span class="icon-heart"></span></a>
                                            <a title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span class="icon-star"></span></a>
                                        </div><!-- end buttons -->
                                    </div><!-- end col -->

                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <div class="shop-item-title text-left clearfix">
                                            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                                            <div class="shopmeta clearfix">
											   <?php if ($product['price']) { ?>
                 <span>
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                   <span><?php echo $product['special']; ?></span> <span><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span ><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
                                                <?php if ($product['rating']) { ?>
                                                <div class="rating">
												   <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                                                    <i class="fa fa-star"></i>
                                                    <?php } else { ?>
													  <i class="fa fa-star"></i>
													 <?php } ?>
                  <?php } ?>
                                                </div><!-- end rating -->
												<?php } ?>
                                            </div><!-- end shop-meta -->
                                            <hr class="invis">
                                            <p><?php echo $product['description']; ?></p>
                                            <a onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="btn btn-white"><i class="icon-handbag"></i>  &nbsp; <?php echo $button_cart; ?></a>
                                        </div><!-- end shop-item-title -->
                                    </div><!-- end col -->
                                </div><!-- end shop-item -->
                            </div><!-- end row -->
							
					<?php } ?>		
							
                        </div>
<?php } else { ?>


      <div class="row">
	      <div class="list-shop row">
        <?php foreach ($products as $product) { ?>
    
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shop-item">   
                                    <div class="entry">
                                        <a class="hover-image" href="<?php echo $product['href']; ?>" title="">
                                            <div class="img-rotate">
                                                <img src="<?php echo $product['thumb']; ?>" alt="">
                                                <img src="<?php echo $product['thumb']; ?>" class="rotate-image" alt="">
                                            </div>  
                                        </a>
                                        <div class="shop-item-title text-center clearfix">
                                            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                                            <div class="shopmeta clearfix">
                                                <?php if ($product['price']) { ?>
                
                  <?php if (!$product['special']) { ?>
                  <span> <?php echo $product['price']; ?></span>
                  <?php } else { ?>
                  <span><?php echo $product['special']; ?></span> 
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span ><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                
                <?php } ?> 
                                                <div class="rating">
												<?php if ($product['rating']) { ?>
												 <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                                                    <i class="fa fa-star"></i>
                                                     <?php } ?>
                  <?php } ?><?php } ?> 
                                              &nbsp;  </div><!-- end rating -->
												
                                            </div><!-- end shop-meta -->
                                        </div><!-- end shop-item-title -->
                                    </div><!-- entry -->
                                    <div class="visible-buttons">
                                        <a title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="icon-handbag"></span></a>
                                        <a title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span class="icon-heart"></span></a>
                                        <a title="Compare" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span class="icon-star"></span></a>
                                    </div><!-- end buttons -->
                                </div><!-- end relative -->
                            </div><!-- end col -->

                   
                    
        <?php } ?>    </div>
      </div>
<?php } ?>	  
	  
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</section>
<?php echo $footer; ?>
