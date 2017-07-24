      <div id="catalog_product_category" class="col-md-3">
        <?php if ($categories) { ?>
        <h3 style="font-size: 24px;" class="page-title"><?php echo $text_refine; ?></h3>
        <?php if (count($categories) <= 5) { ?>
        <div class="row">
          <div class="col-sm-12">
            <ul class="category">
              <?php foreach ($categories as $category) {  ?>
              <li data-toggle="collapse" data-target="#demo<?php echo $category['category_id']; ?>" class="collapsed" category-id="<?php echo $category['category_id']; ?>">
                <?php echo $category['name']; ?>
              </li>
              <div category_id="<?php echo $category['category_id']; ?>" style="padding-left: 30px; cursor: pointer;" data-toggle="collapse" data-target="#demo_sub<?php echo $category['category_id']; ?>" id="demo<?php echo $category['category_id']; ?>" class="sub_category collapse">
                <?php echo $category['child']; ?>
                <div style="padding-left: 30px; cursor: pointer;" class="collapse" id="demo_sub<?php echo $category['category_id']; ?>">

                </div>
              </div>

              <?php } ?>
            </ul>
          </div>
        </div>
        <?php } else { ?>
        <div class="row">
          <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
          <div class="col-sm-12">
            <ul class="category">
              <?php foreach ($categories as $category) { ?>
              <li data-toggle="collapse" data-target="#demo<?php echo $category['category_id']; ?>" class="collapsed" category-id="<?php echo $category['category_id']; ?>">
                <?php echo $category['name']; ?>
              </li>
              <div category_id="<?php echo $category['category_id']; ?>" style="padding-left: 30px; cursor: pointer;" data-toggle="collapse" data-target="#demo_sub<?php echo $category['category_id']; ?>" id="demo<?php echo $category['category_id']; ?>" class="sub_category collapse">
                <?php echo $category['child']; ?>
                <div style="padding-left: 30px; cursor: pointer;" class="collapse" id="demo_sub<?php echo $category['category_id']; ?>">

                </div>
              </div>
              <?php } ?>
            </ul>
          </div>
          <?php } ?>
        </div>
        <?php } ?>
        <?php } ?>
      </div>