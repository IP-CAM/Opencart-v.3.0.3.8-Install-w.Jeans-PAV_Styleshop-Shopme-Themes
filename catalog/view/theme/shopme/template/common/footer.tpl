 <footer class="footer border-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-15 col-md-6 col-sm-6 col-xs-12">
                        <?php echo $footerleft; ?> <!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-15 col-md-6 col-sm-6 col-xs-12">
                        <div class="widget clearfix">
                            <div class="general-title">
                                <h2><?php echo $text_information; ?></h2>
                            </div>
                            <div class="blog_categories clearfix">   
                                <ul class="check">  
                                  <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
                                </ul>
                            </div><!-- end blog_categories --> 
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-15 col-md-6 col-sm-6 col-xs-12">
                        <div class="widget clearfix">
                            <div class="general-title">
                                <h2><?php echo $text_service; ?></h2>
                            </div>
                            <div class="blog_categories clearfix">   
                                <ul class="check">  
                                   <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                                </ul>
                            </div><!-- end blog_categories --> 
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-15 col-md-6 col-sm-6 col-xs-12">
                        <div class="widget clearfix">
                            <div class="general-title">
                                <h2>Customer Links</h2>
                            </div>
                            <div class="blog_categories clearfix">   
                                <ul class="check">  
                                 <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>          	
         	 <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
			  <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
           	<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
			<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
			 <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
			 <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                                </ul>
                            </div><!-- end blog_categories --> 
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-15 col-md-6 col-sm-6 col-xs-12">
                        <div class="widget clearfix">
                            <?php echo $footerright; ?>
                            <!-- end blog_categories --> 
                        </div><!-- end widget -->
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
			 </footer>
		<footer class="footer bg-second border-top">
            <div class="container">
        <?php echo $footertop; ?>        <!-- end row -->
            </div><!-- end container -->
        </footer>	
			
			 
			
       
		<section class="section-footer bg-inverse border-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-5">
					  <?php echo $footerbottom; ?>  
                        <!-- end media -->
                    </div><!-- end col -->
					<div class="col-md-6 col-lg-7">
                        <ul class="list-inline m-b-0">
						 <?php foreach ($informationsbottom as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
                            
                            <li><a class="scroll-top" href="#totop">Back to top <span class="fa fa-angle-up"></span></a></li>
                        </ul>
                    </div>
                    <!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section>
		  <script src="catalog/view/javascript/js/custom.js"></script>
		
	