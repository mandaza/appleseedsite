<?php
  $checker = array(
    'show_on_website' => 1,
    'school_id' => $active_school_id,
    'session' => active_session()
  );
  $this->db->where($checker);
  $this->db->order_by('date', 'DESC');
  $query = $this->db->get('noticeboard');
  $notices = $query->result_array();
?>






               <!--Breadcrumb Banner Area Start-->
               <div class="breadcrumb-banner-area" style="background: rgba(0, 0, 0, 0) url('<?php echo base_url();?>assets/img/banner/banner.jpg') repeat scroll 0 0; height: 253px;" >
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="breadcrumb-text">
                                    <h1 class="text-center">Latest News</h1>
                                    <div class="breadcrumb-bar">
                                        <ul class="breadcrumb text-center">
                                             <li><a href="<?php echo base_url(); ?>home">Home</a></li>
                                            <li>Latest News</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End of Breadcrumb Banner Area-->


                <!--Latest News Area Start--> 
                <div class="latest-area section-padding latest-page">
                    <div class="container">
                        <div class="row">
                        <?php foreach ($notices as $row) { ?>
                             
                             <div class="col-lg-4 col-md-6 col-12">
                             <div class="single-event-item">
                                 <div class="single-event-image">
                                     
                                 <a href="<?php echo site_url('home/notice_details/'.$row['id']);?>"><img class="post-thumb" src="<?php echo $this->crud_model->get_noticeboard_image($row['image']); ?>" style="width:370px; height:257px;" /></a>
                                     
                                 </div>
                                 <div class="single-event-text">
                                     <h3><a href="<?php echo site_url('home/notice_details/'.$row['id']);?>"><?php echo $row['notice_title'];?></a></h3>
                                     <div class="single-item-comment-view">
                                       
                                        <span><i class="zmdi zmdi-calendar-check"></i><?php echo date('d M, Y', strtotime($row['date'])); ?></span>
                                    </div>
                                    <p><?php echo substr($row['notice'], 0, 100); ?></p>
                                    <a href="<?php echo site_url('home/notice_details/'.$row['id']);?>" class="button-default">Read More</a>
                                 </div>
                             </div>
                         </div>
                             <?php } ?>     
                        </div>
                      
                    </div>
                </div>
                <!--End of Latest News Area-->
