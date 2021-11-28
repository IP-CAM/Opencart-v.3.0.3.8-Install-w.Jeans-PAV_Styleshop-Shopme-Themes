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
  
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
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
	
      <div class="login-content">
        <div class="col-sm-6">
		<form class="form-horizontal loginform" method="post">
                            <fieldset>
                                <div class="general-title text-center">
                                    <h2><?php echo $text_new_customer; ?></h2>
                                </div>
                                
                          <p><strong><?php echo $text_register; ?></strong></p>
            <p><?php echo $text_register_account; ?></p>
                                
                         
                                
                             
                                
                             
                                <div class="control-group">
                                    <div class="controls">
									  <a href="<?php echo $register; ?>" class="btn btn-white"><?php echo $button_continue; ?></a>
                                      
                                    </div>
                                </div>
                            </fieldset>
                        </form>
		
		
		
        </div>
        <div class="col-sm-6">
		
		<form class="form-horizontal loginform" method="post">
                            <fieldset>
                                <div class="general-title text-center">
                                    <h2><?php echo $text_returning_customer; ?></h2>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"><?php echo $entry_email; ?></label>
                                    <div class="controls">
                                       <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                                    </div>
                                </div>
                         
                                <div class="control-group">
                                    <label class="control-label"><?php echo $entry_password; ?></label>
                                    <div class="controls">
                                      <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
									  
									       <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <div class="controls">
									 <input type="submit" value="<?php echo $button_login; ?>"  class="btn btn-white" />
                                      
                                    </div>
                                </div>
                            </fieldset>
                        </form>
		
		
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>