<?php
  $this->db->where('status', 1);
  $this->db->where('school_id', $active_school_id);
  $this->db->order_by('timestamp', 'DESC');
  $query = $this->db->get('frontend_events');
  $events = $query->result_array();
?>


               <!--Breadcrumb Banner Area Start-->
               <div class="breadcrumb-banner-area" style="background: rgba(0, 0, 0, 0) url('../assets/img/banner/banner.jpg') repeat scroll 0 0; height: 253px;" >
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="breadcrumb-text">
                                    <h1 class="text-center">Latest events</h1>
                                    <div class="breadcrumb-bar">
                                        <ul class="breadcrumb text-center">
                                             <li><a href="<?php echo base_url(); ?>home">Home</a></li>
                                            <li>Latest Events</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End of Breadcrumb Banner Area-->


                          



                <!--Event Area Start-->
                <div class="event-area section-padding event-page">
                    <div class="container">
                        <div class="row">
                        <?php
                            foreach ($events as $row) { ?>
          
                            <div class="col-lg-4 col-md-6 col-12">
                                <div class="single-event-item">
                                    <div class="single-event-image">
                                        
                                        <a href=""><img class="post-thumb" src="<?php echo site_url(); ?>assets/images/posts/undraw_online_calendar_kvu2.svg" style="width:370px; height:257px;" />
                                        </a>
                                        
                                    </div>
                                    <div class="single-event-text">
                                        <h3><a href=""><?php echo date('d M, Y', $row['timestamp']); ?></a></h3>
                                        <div class="single-item-comment-view">
                                          
                                           <span><i class="zmdi zmdi-pin"></i>Apple Seeds Private</span>
                                       </div>
                                       <p><?php echo $row['title']; ?></p>
                                      
                                    </div>
                                </div>
                            </div>
                            <?php } ?>
                        </div>

                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="pagination-content">
                                    <ul class="pagination">
                                        <li><a href="#"><i class="zmdi zmdi-chevron-left"></i></a></li>
                                        <li class="current"><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End of Event Area-->