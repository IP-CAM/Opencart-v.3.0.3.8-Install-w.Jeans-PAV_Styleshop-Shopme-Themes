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
 
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
	 
      <?php if ($downloads) { ?>
      <div class="table-responsive">
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-right"><?php echo $column_order_id; ?></td>
            <td class="text-left"><?php echo $column_name; ?></td>
            <td class="text-left"><?php echo $column_size; ?></td>
            <td class="text-left"><?php echo $column_date_added; ?></td>
            <td></td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($downloads as $download) { ?>
          <tr>
            <td class="text-right"><?php echo $download['order_id']; ?></td>
            <td class="text-left"><?php echo $download['name']; ?></td>
            <td class="text-left"><?php echo $download['size']; ?></td>
            <td class="text-left"><?php echo $download['date_added']; ?></td>
            <td><a href="<?php echo $download['href']; ?>" data-toggle="tooltip" title="<?php echo $button_download; ?>" class="btn btn-white"><i class="fa fa-cloud-download"></i></a></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
	  </div>
      <div class="row categoryPagination">
	   <div class="col-sm-6 text-left results"><?php echo $results; ?></div>
        <div class="col-sm-6 text-right"><?php echo $pagination; ?></div>       
      </div>
      <?php } else { ?>
      <p class="content"><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-white"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>