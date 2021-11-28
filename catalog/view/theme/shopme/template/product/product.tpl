<?php echo $header; ?>
  
  <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-md-6 col-sm-6 pull-center'; ?>
    <?php } elseif ($column_left ) { ?>
    <?php $class = 'col-md-9 col-sm-12 pull-right'; 
	$iid='rightside';
	?>
	 <?php } elseif ( $column_right) { ?>
	 <?php $class = 'col-md-9 col-sm-12'; 
	$iid='rightside';
	?>
    <?php } else { ?>
    <?php $class = 'col-md-12 col-sm-12';
	$iid='rightside';
	 ?>
    <?php } ?>

    <div id="wrapper" class="row">

        <section class="section banner" style="background-image:url('<?php echo $thumbbanner; ?>');" data-img-width="1920" data-img-height="644" data-diff="100">
            <div >
                <div class="page-header text-center">
                    <h1><?php echo $heading_title; ?></h1>
                    <div class="bread">
                        <ol class="breadcrumbpro">
                           <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?> ></a></li>
    <?php } ?>
                        </ol>
                    </div><!-- end bread -->
                </div>
            </div>
        </section>
		
		<section class="section white"> 
		<div class="bread">
                        <ol class="breadcrumb">
                           
                        </ol>
                    </div><!-- end bread -->
            <div class="container">
			
                <div class="row">
                    <div id="rightside" class="col-md-12 col-sm-12">
                        <div id="single-shop" class="row">
                            <div class="col-md-4">
                                <div class="shop-images">
                                    <ul id="glasscase" class="gc-start" >
									  <li><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></li>
									   <?php if ($images) { ?>   <?php  foreach ($images as $image) { ?>
									   <li><img src="<?php echo $image['thumb']; ?>" alt="" /></li>
									   <?php }} ?>
                                    
                                     </ul>
                                </div><!-- End Slider -->
                            </div><!-- end col -->

                            <div class="col-md-8">
                                <div class="shop-top-title">
                                      <h4><?php echo $heading_title; ?></h4>
									                     <ul class="list-unstyled">
            <?php if ($manufacturer) { ?>
            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
            <li><?php echo $text_model; ?> <?php echo $model; ?></li>
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>
          </ul>
		    <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <strong><?php echo $price; ?></strong>
            </li>
            <?php } else { ?>
            <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
            <li>
              <strong><?php echo $special; ?></strong>
            </li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?> 
                
		  <div id="product">   
		   <?php if ($options) { ?>
            <hr>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>                    
                      <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>
                      <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-white"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-white" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-white"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-white"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring; ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
                               <!-- end title -->

                               
                             
                                <div class="select-qty clearfix">
                                    <small><?php echo $entry_qty; ?></small>
                                     <div class="wan-spinner wan-spinner-2">
									 <div class="wan-spinner wan-spinner-2">
                                        <a href="javascript:void(0)" class="minus">-</a>
                                            <input type="text" name="quantity" value="<?php echo $minimum; ?>" id="input-quantity" class="form-control" >
                                        <a href="javascript:void(0)" class="plus">+</a>
                                    </div>
									<!--  <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />-->
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                     
                                    </div>
                                </div><!-- end select-size -->
								
								
                                <div class="add-cart-button clearfix">
							   <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-white"><?php echo $button_cart; ?></button>	
								
                                     <button type="button" data-toggle="tooltip" title="" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart-o"></i>  <?php echo $button_wishlist; ?></button>   <button type="button" data-toggle="tooltip"  onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i><?php echo $button_compare; ?></button>
                               </div>  </div><!-- end select-size -->
			<?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
			</div>                  
                                </div><!-- end title -->

                            </div><!-- end col -->
                        </div><!-- end single-shop -->

                        <hr class="invis">

                        <div class="row">
                            <div class="col-md-12">
                                <div class="shop-tab">
                                    <ul id="myTabs" class="nav nav-tabs" role="tablist">
                                     <li role="presentation" class="active"><a href="#description"  role="tab"id="tab-description" data-toggle="tab" aria-controls="tab-description"><?php echo $tab_description; ?></a></li>
                                        <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile"><?php echo $reviews; ?></a></li>
										<?php if ($attribute_groups) { ?>
            <li  role="presentation"><a href="#specification" role="tab"id="tab-specification" data-toggle="tab" aria-controls="tab-specification"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>    </ul>
                                    <div id="myTabContent" class="tab-content">
                                      <div role="tabpanel" class="tab-pane fade in active" id="description" aria-labelledBy="tab-description">
                                            <p><?php echo $description; ?></p>
                                        </div>
										   <?php if ($attribute_groups) { ?>
											<div role="tabpanel" class="tab-pane fade" id="specification" aria-labelledBy="tab-specification">
                                            <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
                                        </div>
										<?php } ?>
                                        <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledBy="profile-tab">
										
										<?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-white"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
                                            <!-- end comments -->
                                        </div>  
                                        
                                    </div>
                                </div><!-- /shop-tab -->
                            </div><!-- end col -->
                        </div><!-- end row -->

                        <hr class="invis">
   <?php if ($products) { ?>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="general-title">
                                    <h2><?php echo $text_related; ?></h2>
                                </div>

                                <div class="row">
                                   <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
								    <div class="col-md-3 col-sm-6">
                                        <div class="shop-item">   
                                            <div class="entry">
                                                <a class="hover-image" href="<?php echo $product['href']; ?>" title="">
                                                    <div class="img-rotate">
                                                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"  />
                                                        <img src="<?php echo $product['thumb']; ?>" class="rotate-image" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" >
                                                    </div>  
                                                </a>
                                                <div class="shop-item-title text-center clearfix">
                                                    <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                                                    <div class="shopmeta clearfix">
                                                        <?php if ($product['price']) { ?>
                                                       <p class="price">
                <?php if (!$product['special']) { ?>
                <span><?php echo $product['price']; ?></span>
                <?php } else { ?>
               <span><?php echo $product['special']; ?></span> <span><del><?php echo $product['price']; ?></del></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
														<?php } ?>
                                                        <div class="rating">
														 <?php for ($j = 1; $j <= 5; $j++) { ?>
                                                         <?php if ($product['rating'] < $j) { ?>
                                                            <i class="fa fa-star"></i>
                                                           <?php } else { ?>
														    <i class="fa fa-star"></i>
															<?php } ?>
                                                            <?php } ?>
                                                        </div><!-- end rating -->
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
                            </div><!-- end col -->
                        </div><!-- end row -->
						<?php } ?>
                    </div><!-- end col -->
                </div><!-- end row -->
            </div>
        </section>
<div style="clear:both"></div>
                

   <?php echo $content_bottom; ?><!-- end section -->
              
     <?php echo $footer; ?>
    </div><!-- end wrapper -->
  <script src="catalog/view/javascript/js/wan-spinner.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            var options = {
              maxValue: 10,
              minValue: -5,
              step: 0.131,
              inputWidth: 100,
              start: -2,
              plusClick: function(val) {
                console.log(val);
              },
              minusClick: function(val) {
                console.log(val);
              },
              exceptionFun: function(val) {
                console.log("excep: " + val);
              },
              valueChanged: function(val) {
                console.log('change: ' + val);
              }
            }
            $(".wan-spinner-2").WanSpinner().css("border-color", "#2C3E50");
        });
    </script>
 
  <script src="catalog/view/javascript/js/jquery.glasscase.min.js"></script>
    <script type="text/javascript"> 
        (function($) {
        "use strict"; 
        $(document).ready(function(){
           //If your <ul> has the id "glasscase"
            $("#glasscase").glassCase({ 
                'widthDisplay': 800, 
                'isDownloadEnabled': false, 
                'heightDisplay': 918, 
                'nrThumbsPerRow': 4, 
                'isSlowZoom': true, 
                'isZoomDiffWH': true, 
                'zoomWidth': 400, 
                'zoomHeight': 556, 
                'zoomAlignment': 
                'displayArea' });
        });
        })(jQuery);
    </script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>

<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>