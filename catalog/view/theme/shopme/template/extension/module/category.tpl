<?php //echo $_SERVER['REQUEST_URI'];

$actual_link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; ?>
<div class="msidebar"> 
                            <div class="menu"> 
                                <ul>
                                     <?php foreach ($categories as $category) { ?>
                                    <li> <?php if ($category['category_id'] == $category_id) { ?>
        <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a> <?php if ($category['children']) { ?><a href="#"><i class="fa fa-angle-down"></i></a>    <?php } ?>
        <?php } else { ?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a> <?php if ($category['children']) { ?><a href="#"><i class="fa fa-angle-down"></i></a>    <?php } ?>
        <?php }?>
                                            <?php if ($category['children']) { ?>
        <ul>
          <?php foreach ($category['children'] as $child) { ?>
          <li>
            <?php if ($child['category_id'] == $child_id) { ?>
            <a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a>
            <?php } else { ?>
            <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
            <?php } ?>
          </li>
          <?php } ?>
        </ul>
        <?php } ?>                
                                    </li>
                                    <?php } ?>
                                  
                                </ul>
                            </div>
                        </div>