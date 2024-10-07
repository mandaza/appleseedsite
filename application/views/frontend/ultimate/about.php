



                 <!--Breadcrumb Banner Area Start-->
                 <div class="breadcrumb-banner-area" style="background: rgba(0, 0, 0, 0) url('../assets/img/banner/banner.jpg') repeat scroll 0 0; height: 253px;" >
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="breadcrumb-text">
                                    <h1 class="text-center">ABOUT US</h1>
                                    <div class="breadcrumb-bar">
                                        <ul class="breadcrumb text-center">
                                            <li><a href="<?php echo base_url(); ?>home">Home</a></li>
                                            <li>ABOUT US</li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End of Breadcrumb Banner Area-->
                <!--About Page Area Start-->
                <div class="about-page-area section-padding">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title-wrapper">
                                    <div class="section-title">
                                        <h3>Who we are</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-12">
                                <div class="about-text-container">
                                <span> <?php
                                $about_us_text  = get_frontend_settings('about_us');
                                echo htmlspecialchars_decode(stripslashes($about_us_text));
                                  ?></span>
                            </div>
                        </div>
                    </div>
                </div>
</div>
                <!--End of About Page Area-->