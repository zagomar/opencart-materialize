<?php echo $header; ?>
<script type="application/ld+json">
	{
		"@context": "http://schema.org",
		"@type": "BreadcrumbList",
		"itemListElement": [
			<?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
			<?php $i++ ?>
			<?php if ($i < count($breadcrumbs)) { ?>
			<?php if ($i == 1) {?>
			<?php } else {?>
			{
				"@type": "ListItem",
				"position": <?php echo ($i-1); ?>,
				"item": {
					"@id": "<?php echo $breadcrumb['href']; ?>",
					"name": "<?php echo $breadcrumb['text']; ?>"
				}
			},
			<?php }?>
			<?php } else { ?>
			{
				"@type": "ListItem",
				"position": <?php echo ($i-1); ?>,
				"item": {
					"@id": "<?php echo $breadcrumb['href']; ?>",
					"name": "<?php echo $breadcrumb['text']; ?>"
				}
			}
			<?php }}?>
		]
	}
</script>
	<main>
		<div class="container">
			<nav class="breadcrumb-wrapper transparent z-depth-0">
				<div class="nav-wrapper">
					<?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
					<?php $i++ ?>
					<?php if ($i < count($breadcrumbs)) { ?>
					<?php if ($i == 1) {?>
						<a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumb black-text"><i class="material-icons">home</i></a>
					<?php } else {?>
						<a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumb black-text"><?php echo $breadcrumb['text']; ?></a>
					<?php }?>
					<?php } else { ?>
						<span class="breadcrumb black-text"><?php echo $breadcrumb['text']; ?></span>
					<?php }}?>
				</div>
			</nav>
			<h1><?php echo $heading_title; ?></h1>
			<?php if ($column_left && $column_right) { ?>
				<?php $main = 's12 l6'; ?>
			<?php } elseif ($column_left || $column_right) { ?>
				<?php $main = 's12 l9'; ?>
			<?php } else { ?>
				<?php $main = 's12'; ?>
			<?php } ?>
			<div class="row">
				<?php echo $column_left; ?>
				<div id="content" class="col <?php echo $main; ?>">
					<?php echo $content_top; ?>
					<div class="card-panel">
						<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
							<h2><?php echo $entry_newsletter; ?></h2>
							<?php if ($newsletter) { ?>
								<input type="radio" name="newsletter" value="1" checked="checked" id="newsletter-yes" class="with-gap">
								<label for="newsletter-yes"><?php echo $text_yes; ?></label>

								<input type="radio" name="newsletter" value="0" id="newsletter-no" class="with-gap">
								<label for="newsletter-no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input type="radio" name="newsletter" value="1" id="newsletter-yes" class="with-gap">
								<label for="newsletter-yes"><?php echo $text_yes; ?></label>

								<input type="radio" name="newsletter" value="0" checked="checked" id="newsletter-no" class="with-gap">
								<label for="newsletter-no"><?php echo $text_no; ?></label>
							<?php } ?>
							<div class="row">
								<div class="col s6">
									<a href="<?php echo $back; ?>" class="btn-flat waves-effect waves-light href-underline"><?php echo $button_back; ?></a>
								</div>
								<div class="col s6">
									<div class="flex-reverse no-padding">
										<input type="submit" value="<?php echo $button_continue; ?>" class="btn waves-effect waves-light red">
									</div>
								</div>
							</div>
						</form>
					</div>
					<?php echo $content_bottom; ?>
				</div>
				<?php echo $column_right; ?>
			</div>
		</div>
	</main>
<?php echo $footer; ?>