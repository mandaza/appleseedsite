<?php
  $checker = array(
    'show_on_website' => 1,
    'school_id' => $active_school_id,
    'session' => active_session()
  );
  $this->db->where($checker);
  $this->db->limit(3);
  $this->db->order_by('date', 'DESC');
  $query = $this->db->get('noticeboard');
  $notices = $query->result_array();
?>

<?php
  $this->db->where('status', 1);
  $this->db->where('school_id', $active_school_id);
  $this->db->limit(3);
  $this->db->order_by('timestamp', 'DESC');
  $query = $this->db->get('frontend_events');
  $events = $query->result_array();
?>
                <!--Slider Area Start-->
                <div class="slider-area">
                    <div class="preview-2">
                        <div id="nivoslider" class="slides">

                            <img src="<?php echo base_url(); ?>assets/img/slider/slider.png " alt="Apple Seeds Private" title="#slider-1-caption1"/>
                            <img src="<?php echo base_url(); ?>assets/img/slider/slider2.png" alt="Apple Seeds Private" title="#slider-1-caption2"/>
                        </div> 
                        <div id="slider-1-caption1" class="nivo-html-caption nivo-caption">
                            <div class="banner-content slider-1">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="text-content-wrapper">
                                                <div class="text-content">
                                                    <h1 class="title1 wow fadeInUp" data-wow-duration="2000ms" data-wow-delay="0s">The Ideal Start</h1>
                                                    <p class="sub-title wow fadeInUp d-none d-lg-block" data-wow-duration="2900ms" data-wow-delay=".5s"> “From their start here as babies, just beginning <br> to be mobile, they progress to be independent<br/>,self-motivated learners, confident in their own ability <br/>to do things for themselves
                                                    and to help others.”</p>
                                                    <div class="banner-readmore wow fadeInUp" data-wow-duration="3600ms" data-wow-delay=".6s">
                                                        <a class="button-default" href=" ">Enroll Today</a>	
                                                                       
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div id="slider-1-caption2" class="nivo-html-caption nivo-caption">
                            <div class="banner-content slider-2">
                                <div class="container">
                                    <div class="row">
                                   
                                        <div class="col-md-12">
                                            <div class="text-content-wrapper">
                                                <div class="text-content slide-2">
                                                    <h1 class="title1 wow rotateInDownLeft" data-wow-duration="1000ms" data-wow-delay="0s">Out Standing</h1>
                                                    <p class="sub-title wow rotateInDownLeft d-none d-lg-block" data-wow-duration="1800ms" data-wow-delay="0s"> “Excellent teaching contributes to the pupils’
                                                    high standards of achievement and progress.”</p>
                                                    <div class="banner-readmore wow rotateInDownLeft" data-wow-duration="1800ms" data-wow-delay="0s">
                                                        <a class="button-default" href="">Enroll Today</a>	                
                                                    </div>
                                                    

                                                </div>
                                            </div>
                                        </div>
                                      
                                    </div>
                                </div>
                            </div>
                        </div>	 
                    </div>
                </div>
                <!--End of Slider Area-->
                <!--About Area Start--> 
                <div class="about-area" id="about">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="about-container">
                                    <h3 style="color: #fff !important;">Welcome</h3>
                                    <h4>Apple Seeds Private School</h4>
                                    <p>It was wonderful for the school’s work to be rated as Outstanding and Excellent in every category.We offer a broad curriculum in multi-age classrooms which aims to develop the whole person – their mind, body, heart and soul.  We teach academic, social and other valuable skills to last a lifetime. Our goal is to make sure that our girls and boys are confident, happy all-rounders with a love of learning.</p>
                                    	     
                                    <a class="button-default" href="<?php echo base_url('home/about'); ?>">Read More</a> 
                                </div>
                            </div>
                           <div class="col-lg-6 col-md-12 ">
                                <div class="about-container embed-responsive embed-responsive-16by9">
                               
                                   <video type="mp4"  controls>
                                    <source  src="<?php echo base_url();?>assets/videos/tour.mp4">
                                   </video>
                            </div>

          </div>
                        </div>
                    </div>
                </div>
                <!--End of About Area-->
              
                <!--Fun Factor Area Start-->
                <div class="fun-factor-area" style=" background: rgba(0, 0, 0, 0) url('<?php echo base_url();?>assets/img/banner/2.jpg') repeat scroll 0 0; ">
                    <div class="container">
                     
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-12">
                                <div class="single-fun-factor">
                                    <h4>Staff</h4>
                                    <h2><span class="counter">20</span>+</h2>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-12">
                                <div class="single-fun-factor">
                                    <h4>Students</h4>
                                    <h2><span class="counter">220</span>+</h2>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-12">
                                <div class="single-fun-factor">
                                    <h4>Classrooms</h4>
                                    <h2><span class="counter">20</span>+</h2>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-12">
                                <div class="single-fun-factor">
                                    <h4>Pass Rate</h4>
                                    <h2><span class="counter">100</span>%</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End of Fun Factor Area-->   
                <!--Latest News Area Start--> 
                <div class="latest-area section-padding bg-white">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title-wrapper">
                                    <div class="section-title">
                                        <h3>Latest News</h3>
                                        <p>Stay Up to Date </p>
                                    </div>
                                </div>
                            </div>
                        </div>
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
               
                
                <!--Event Area Start-->
                <div class="event-area section-padding bg-white">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title-wrapper">
                                    <div class="section-title">
                                        <h3>OUR EVENTS</h3>
                                        <p>Never miss out !!</p>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                            
                        </div>
                    </div>
                </div>
                <!--End of Event Area-->

