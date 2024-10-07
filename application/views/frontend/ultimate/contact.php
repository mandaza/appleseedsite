


  
                <!--Breadcrumb Banner Area Start-->
                <div class="breadcrumb-banner-area" style="background: rgba(0, 0, 0, 0) url('../assets/img/banner/banner.jpg') repeat scroll 0 0; height: 253px; background-repeat: no-repeat;" >
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="breadcrumb-text" >
                                    <h1 class="text-center">CONTACT US</h1>
                                    <div class="breadcrumb-bar">
                                        <ul class="breadcrumb text-center" >
                                            <li><a href="<?php echo base_url(); ?>home">Home</a></li>
                                            <li>CONTACT</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End of Breadcrumb Banner Area-->
                <!--Google Map Area Start-->
                <div class="container-fluid col-lg-12">
                    <!--  Map Section -->

                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d436.19770678953836!2d30.713079402417357!3d-22.982922002591692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjLCsDU4JzU5LjEiUyAzMMKwNDInNDcuNSJF!5e1!3m2!1sen!2szw!4v1602090827760!5m2!1sen!2szw" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

                  
                    </div>
                </div>
                <!--End of Google Map Area-->
                <!--Contact Form Area Start-->
                <div class="contact-form-area section-padding">

            
                    <div class="container">
                        <div class="row">
                           
                            <div class="col-lg-12 col-md-12">
                                <h4 class="contact-title">send your massage</h4>
                                <form action="<?php echo site_url('home/contact/send');?>" method="post" class="js-validate">
                                    <div class="row">

                                        <div class="col-md-6">
                                            <input type="text" name="first_name" placeholder="First Name" required data-msg="Please enter your first name."
                                            data-error-class="u-has-error"
                                             data-success-class="u-has-success">
                                        </div>

                                        <div class="col-md-6">
                                            <input type="text" name="last_name" placeholder="Last Name" required data-msg="Please enter your last name."
                                            ddata-msg="Please enter your last name."
                                           data-error-class="u-has-error"
                                            data-success-class="u-has-success">
                                        </div>

                                        <div class="col-md-6">
                                        <input type="number" class="form-control" placeholder="Phone Number" name="phone" required
                                         data-msg="Please enter a valid phone number."
                                         data-error-class="u-has-error"
                                         data-success-class="u-has-success">
                                       </div>


                                       <div class="col-md-6">
                                            <input type="email" name="email" placeholder="Email" required
                                            data-msg="Please enter a valid email address."
                                             data-error-class="u-has-error"
                                               data-success-class="u-has-success">
                                     </div>

                                   <div class="col-md-12">
                                         <input type="text" class="form-control" placeholder="Address" name="address" required
                                         data-msg="Please enter your location."
                                         data-error-class="u-has-error"
                                        data-success-class="u-has-success">
                                  </div>
                
                                


                                        <div class="col-md-12">
                                       <textarea class="form-control" rows="4" placeholder="Type your message..." name="comment" required
                      data-msg="Please enter your message."
                      data-error-class="u-has-error"
                      data-success-class="u-has-success"></textarea>
                      <button type="submit" class="button-default btn-wide transition-3d-hover mb-4"><?php echo get_phrase('Submit'); ?></button>
                                    </div>

                                    
                                </form>
                                    <!-- Display the status message -->
                       <?php if(!empty($status)){ ?>
                      <div class="status <?php echo $status['type']; ?>"><?php echo $status['msg']; ?></div>
                       <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!--End of Contact Form-->
               
