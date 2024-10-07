<?php
  $this->db->where('show_on_website', 1);
  $this->db->where('school_id', $active_school_id);
  $this->db->order_by('date_added', 'DESC');
  $query = $this->db->get('frontend_gallery');
  $galleries = $query->result_array();
?>





<!--Breadcrumb Banner Area Start-->
<div class="breadcrumb-banner-area" style="background: rgba(0, 0, 0, 0) url('../assets/img/banner/banner.jpg') repeat scroll 0 0; height: 253px;" >
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="breadcrumb-text">
                                    <h1 class="text-center">Image Gallery</h1>
                                    <div class="breadcrumb-bar">
                                        <ul class="breadcrumb text-center">
                                            <li><a href="<?php echo site_url('home');?>">Home</a></li>
                                            <li>Gallery</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End of Breadcrumb Banner Area-->
                <!--Gallery Area Start-->
                <div class="gallery-area pt-110 pb-130">
                    <div class="container">
                        <div class="row">
                        <?php
                        foreach ($galleries as $row) {
                        $this->db->where('frontend_gallery_id', $row['frontend_gallery_id']);
                         $query = $this->db->get('frontend_gallery_image');
                         $images = $query->result_array();
                         $number_of_image = count($images);
                          $cover_image = $row['image'];
                        ?>

                            <div class="col-lg-4 col-md-6 mb-30">
                                 <div class="gallery-img">
                                 <img src="<?php echo base_url(); ?>uploads/images/gallery_cover/<?php echo $cover_image;?>" alt="Apple Seeds Private School">
                                 <div class="hover-effect">
                                        <div class="zoom-icon">
                                            <a class="popup-image" href="<?php echo base_url(); ?>uploads/images/gallery_cover/<?php echo $cover_image;?>"><i class="fa fa-search-plus"></i></a>
                                        </div>
                                    </div>
                                    </div>
                            </div>
                
 
        <!-- Gallery thumb ends -->
        <?php } ?>




                            
                            
                 
                        </div>
                    </div>
                </div>
                <!--End of Gallery Area-->
               