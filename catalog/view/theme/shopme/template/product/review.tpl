<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<ul class="media-list">
                                                    <li class="media">
                                                       
                                                        <div class="media-body">
                                                            <h4 class="media-heading"><?php echo $review['author']; ?>
                                                            <span class="rating">
															  <?php  for ($i = 0; $i <= 5; $i++) { ?>
                                                               <?php if ($review['rating'] > $i) { ?>
                                                                <i class="fa fa-star"></i>
                                                              <?php } ?>
      <?php } ?>
                                                            </span><!-- end rating -->
                                                            </h4>
                                                            <p><?php echo $review['text']; ?></p>
                                                        </div><!-- end media -->
                                                    </li>
                                                    
                                                    
                                                </ul>


<?php } ?>
<div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>
