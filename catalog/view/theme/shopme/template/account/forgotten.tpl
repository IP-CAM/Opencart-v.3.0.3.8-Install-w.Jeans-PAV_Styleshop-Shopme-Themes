<?php echo $header; ?>
<section class="section normalheader">
            <div>
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
 
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
     
      <p><?php echo $text_email; ?></p>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">

        <fieldset>
          <legend><?php echo $text_your_email; ?></legend>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
            </div>
          </div>
        </fieldset>

        

        

        <fieldset>
          
          <div class="form-group">
            <label class="col-sm-2 control-label">&nbsp;</label>
            <div class="col-sm-10">
			
           &nbsp;
            </div>
          </div>
        </fieldset>
      
    	
        
       
        <div style="clear:both;"></div>
        <div class="buttons clearfix">
          
          <div class="pull-right">
            <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-white" />
          </div>
        </div>
     
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>




<?php echo $footer; ?>