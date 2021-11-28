 <div   id="slideshow<?php echo $module; ?>">
                        <div class="slider">
                            <div id="post-slider">
                                <ul class="slides">
								 <?php foreach ($banners as $banner) { ?>
                                    <li>
                                          <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
                                    </li>
									<?php } ?>
                                  
                                </ul>
                            </div>
                        </div><!-- End Slider -->
                    </div>