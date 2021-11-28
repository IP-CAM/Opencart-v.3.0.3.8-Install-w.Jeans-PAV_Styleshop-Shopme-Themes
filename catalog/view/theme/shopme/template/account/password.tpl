<?php echo $header; ?>
<section class="section normalheader">
            <div>
                <div class="page-header text-center">
                    <h1><?php echo $text_password; ?></h1>
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
	
	
	<form class="form-horizontal loginform" method="post">
                            <fieldset>
                              
                                <div class="control-group">
                                    <label class="control-label"><?php echo $entry_password; ?></label>
                                    <div class="controls">
                                       <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
              <?php if ($error_password) { ?>
              <div class="text-danger"><?php echo $error_password; ?></div>
              <?php } ?>
                                    </div>
                                </div>
                         
                                <div class="control-group">
                                    <label class="control-label"><?php echo $entry_confirm; ?></label>
                                    <div class="controls">
                                        <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
              <?php if ($error_confirm) { ?>
              <div class="text-danger"><?php echo $error_confirm; ?></div>
              <?php } ?>
                                    </div>
                                </div>
                         
                                
                             
                                
                             
                                <div class="control-group">
                                    <div class="controls">
									<div class="buttons clearfix">
          <div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-white"><?php echo $button_back; ?></a></div>
          <div class="pull-right">
            <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-white" />
          </div>
        </div>
                                    
                                    </div>
                                </div>
                            </fieldset>
                        </form>
	
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 