<div style="clear:both;padding-top:80px" ></div>      
<section class="section white nopad border-top" > 
            <div class="container"  id="carousel-<?php echo $module; ?>" >

                <div id="owl-client" class="clients">
				<?php foreach ($banners as $banner) { ?>
                    <div class="client-logo">
                       	<?php if ($banner['link']) { ?>
   <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive"/></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
                    </div><!-- end logo -->
  <?php } ?>
                  
     </div><!-- end row -->

            </div><!-- end container -->
        </section>