<div class="container-fluid">
            <div class="block-header">
                <h2 align="center">ADD CATEGORY</h2>
            </div>
            <!-- Input -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="body">
                          <?php echo form_open('admin/Kategori/editCategory'); ?>
                            <div class="row clearfix">
                                <div class="col-sm-12"  style="margin-top:10px !important">
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <input required type="text" class="form-control" name="categoryname" value='<?= $record->Category_name?>'>
                                            <label class="form-label">Category Name</label>
                                        </div>
                                    </div>
                                </div>
                                <input hidden type="text"  name="id" value='<?= $record->Id?>'>
                                <div class="col-sm-12" style="margin-bottom:5px !important">
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <input required type="text" class="form-control" name="description" value='<?= $record->Description?>'>
                                            <label class="form-label">Description</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12" style="margin-bottom:5px !important">
                                    <button type="submit" class="btn btn-primary">UPDATE</button>
                                </div>
                            </div>
                          </form >
                        </div>
                    </div>
                </div>
            </div>
            <!--#END# Switch Button -->
</div>
