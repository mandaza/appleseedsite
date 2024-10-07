

                <!--Newsletter Area Start-->
                <div class="newsletter-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5 col-md-5">
                                <div class="newsletter-content">
                                    <h3>SUBSCRIBE</h3>
                                    <h2>TO OUR NEWSLETTER</h2>
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-7">
                                <div class="newsletter-form angle">
                                <?php echo validation_errors(); ?>
                                  <?php echo form_open_multipart('email/subscribe'); ?>
                                        <div class="subscribe-form">
                                            <input id="mc-email" type="email" name="email" placeholder="Enter your email address...">
                                            <button id="mc-submit" type="submit">SUBSCRIBE</button>
                                        </div>    
                                    </form>
                                    <!-- mailchimp-alerts Start -->
                                    <div class="mailchimp-alerts text-centre fix pull-right">
                                        <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                                        <div class="mailchimp-success"></div><!-- mailchimp-success end -->
                                        <div class="mailchimp-error"></div><!-- mailchimp-error end -->
                                    </div>
                                    <!-- mailchimp-alerts end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End of Newsletter Area-->

          
<!--Footer Widget Area Start-->
                <div class="footer-widget-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="single-footer-widget">
                                    <div class="footer-logo">
                                        <a href="index.html"><h4 style="color: #fff">Apple Seeds Private School.</h4></h4><img src="" alt=""></a>
                                    </div>
                                    <p>“Excellent teaching contributes to the pupils’ high standards of achievement and progress.”</p>
                                    <div class="social-icons">
                                        <a href="<?php echo $links[0]->facebook;?>" target="_blank"><i class="zmdi zmdi-facebook"></i></a>
                                        <a href="<?php echo $links[0]->twitter;?>" target="_blank"><i class="zmdi zmdi-twitter"></i></a>
                                        <a href="<?php echo $links[0]->linkedin;?>" target="_blank"><i class="zmdi zmdi-linkedin"></i></a>
                                        
                                        <a href="<?php echo $links[0]->instagram;?>" target="_blank"><i class="zmdi zmdi-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4  col-md-6">
                                <div class="single-footer-widget">
                                    <h3>GET IN TOUCH</h3>
                                    <a href="tel:0027780050646"><i class="fa fa-phone"></i><?php echo get_settings('phone'); ?></a>
                                    <span><i class="fa fa-envelope"></i> <a href="mailto:<?php echo get_settings('system_email'); ?>" style="color:#fff;">
                                    <?php echo get_settings('system_email'); ?>
                                   </a></span>
                                    
                                    <span><i class="fa fa-map-marker"></i><?php echo get_settings('address'); ?></span>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="single-footer-widget">
                                    <h3>Quick Links</h3>
                                    <ul class="footer-list">
                                    <li><a href="<?php echo base_url(); ?>home/about">About Us</a></li>
                                    <li><a href="<?php echo base_url(); ?>home/noticeboard">News</a></li>
                                    <li><a href="<?php echo base_url(); ?>home/events">Events</a></li>
                                    <li><a href="<?php echo base_url(); ?>home/gallery">Gallery</a></li>
                                    <li><a href="<?php echo base_url(); ?>home/contact">Contact</a></li>
                                    </ul>
                                </div>
                            </div>
     
                        </div>
                    </div>
                </div>
                <!--End of Footer Widget Area-->
                <!--Footer Area Start-->
                <footer class="footer-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-7 col-12">
                                <span style="font-size:1rem;">Copyright &copy; Apple Seeds Private School <script>document.write(new Date().getFullYear());</script>.All right reserved. </span>
                            </div>
                            <div class="col-lg-6 col-md-5 col-12">
                                <div class="column-right">
                                    <span style="font-size:1rem;">Designed By <a href="https://fructox.com/" target="_blank">Fructox In Gweru</a></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!--End of Footer Area-->
            </div>   
            <!--End of Bg White--> 
        </div>    
        <!--End of Main Wrapper Area--> 
        
               
                 <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5fdbda7ddf060f156a8e2672/1eppcqv4d';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
		<!-- jquery
		============================================ -->		
        <script src="<?php echo base_url(); ?>assets/js/vendor/jquery-1.12.4.min.js"></script>
        
		<!-- popper JS
		============================================ -->		
        <script src="<?php echo base_url(); ?>assets/js/popper.min.js"></script>
        
		<!-- bootstrap JS
		============================================ -->		
        <script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
        
		<!-- AJax Mail JS
		============================================ -->		
        <script src="<?php echo base_url(); ?>assets/js/ajax-mail.js"></script>
        
		<!-- plugins JS
		============================================ -->		
        <script src="<?php echo base_url(); ?>assets/js/plugins.js"></script>
        
		<!-- StyleSwitch JS
		============================================ -->	
        <script src="<?php echo base_url(); ?>assets/js/styleswitch.js"></script>
        
		<!-- main JS
		============================================ -->		
       <script src="<?php echo base_url(); ?>assets/js/main.js"></script>
           

        <script>
                CKEDITOR.replace( 'editor1' );
            </script>
            
            
                <script>
        document.onkeydown = function(e) {
    if(e.keyCode == 123) {
     return false;
    }
    if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)){
     return false;
    }
    if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)){
     return false;
    }
    if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)){
     return false;
    }

    if(e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)){
     return false;
    }      
 }
    </script>
            
   

    </body>


</html>


<script type="text/javascript">
function activateSchool(school_id) {
  $.ajax({
    url: "<?php echo site_url('home/active_school_id_for_frontend/'); ?>"+school_id,
    success: function(response){
      location.reload();
    }
  });
}
</script>