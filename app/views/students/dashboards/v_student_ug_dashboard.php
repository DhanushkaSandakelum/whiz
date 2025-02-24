<html lang="en">
    <head>
        <title><?php echo SITENAME; ?></title>
        <!-- Styles -->
        <link rel="stylesheet" href="<?php echo URLROOT; ?>/css/style.css">
    </head>
    <body>
        <!-- SIDE BAR -->
        <?php require APPROOT.'/views/inc/components/sideBar/sidebar.php'?>

        <div class="main-content">
            <!-- TOP Navigation -->
            <header>
                <?php require APPROOT.'/views/inc/components/topnav.php'?>
            </header>

            <main>
                <div class="wrapper">
                    <!-- TOP PANEL -->
                    <div class="top-panel">
                        <h1>Undergraduate Graduate dashboard</h1>
                    </div>

                    <!-- MIDDLE PANEL -->
                    <div class="middle-panel">
                        <div class="middle-left-panel">              
                        <div class="dashboard-title">My Enrollments</div>                      
                        <!-- Company enrollments -->
                        <?php if(empty($data['job_enrollments'])):?>
                                <!-- empty - show idle -->
                                <div class="dashboard-content-idle-container job">
                                    <div class="left">
                                        <div class="image">
                                            <img src="<?php echo URLROOT.'/imgs/dashboard/job-dashboard.jpg'; ?>" alt="">
                                        </div>
                                    </div>
                                    <div class="right">
                                        <div class="title">Jobs</div>
                                        <div class="body">
                                            <ul>
                                                <li><span class="dashboard-red-bullet">*</span> You can view job advertisements published by companies by choosing Jobs option.</li>
                                            </ul>
                                        </div>
                                        <a href="<?php echo URLROOT;?>/C_S_Stu_To_Company/index" class="card-link"><div class="btn1-small">GET STARTED</div></a>
                                    </div>
                                </div>
                            <?php else: ?>                                
                              <div class="dashboard-content-title">Jobs</div>
                              <div class="dashboard-content-container"><?php echo empty($data['job_enrollments']); ?>
                                <?php foreach($data['job_enrollments'] as $job_enroll): ?>
                                <a href="<?php echo URLROOT; ?>/C_S_Stu_To_Company/show/<?php echo $job_enroll->post_id; ?>" class="card-link">
                                <div class="enrollment-container">
                                    <div class="image">
                                        <img src="<?php echo URLROOT.'/imgs/posts/jobads/'.$job_enroll->image; ?>" alt="">
                                    </div>
                                    <div class="right">
                                        <div class="up">
                                            <div class="title"><?php echo $job_enroll->title; ?></div>
                                            <div class="applied-date"><?php echo convertedToReadableTimeFormat($job_enroll->applied_date); ?></div>
                                        </div>
                                        <div class="down">
                                            <div class="capacity bar-company">
                                                <progress max="100" value="<?php if($job_enroll->capacity != 0){ echo ($job_enroll->applied / $job_enroll->capacity) * 100;} else {echo 0;} ?>" id="prgBar"></progress>
                                            </div>
                                            <div class="capacity-text">
                                                Applied: <?php echo $job_enroll->applied; ?>/ <?php echo $job_enroll->capacity; ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </a>
                                <?php endforeach; ?>
                              </div>
                            <?php endif; ?>

                            <!-- Professional guider enrollments -->
                         <?php if(empty($data['prof_guider_enrollments'])):?>
                                <!-- empty - show idle -->
                                <div class="dashboard-content-idle-container proGuider">
                                    <div class="left">
                                        <div class="image">
                                            <img src="<?php echo URLROOT.'/imgs/dashboard/pro-guider-dashboard.jpg'; ?>" alt="">
                                        </div>
                                    </div>
                                    <div class="right">
                                        <div class="title">Professinal guiders</div>
                                        <div class="body">
                                            <ul>
                                                <li><span class="dashboard-red-bullet">*</span> By choosing Professional Guiders option, you can enroll with there sessions,comment and review guider sessions.</li>
                                                <li><span class="dashboard-red-bullet">*</span> This is a good opportunity to prepare yourself before going to some academic or inductrial level.</li>
                                            </ul>
                                        </div>
                                        <a href="<?php echo URLROOT;?>/C_S_Stu_To_ProfessionalGuider/index" class="card-link"><div class="btn1-small">GET STARTED</div></a>
                                    </div>
                                </div>
                            <?php else: ?>      
                            <div class="dashboard-content-title">Professional guiders</div>
                              <div class="dashboard-content-container">
                                <?php foreach($data['prof_guider_enrollments'] as $prof_enroll): ?>
                                <a href="<?php echo URLROOT; ?>/C_S_Stu_To_ProfessionalGuider/show/<?php echo $prof_enroll->post_id; ?>" class="card-link">
                                <div class="enrollment-container">
                                    <div class="image">
                                        <img src="<?php echo URLROOT.'/imgs/posts/banners/'.$prof_enroll->image; ?>" alt="">
                                    </div>
                                    <div class="right">
                                        <div class="up">
                                            <div class="title"><?php echo $prof_enroll->title; ?></div>
                                            <div class="applied-date"><?php echo convertedToReadableTimeFormat($prof_enroll->applied_date); ?></div>
                                        </div>
                                        <div class="down">
                                            <div class="capacity bar-prof-guider">
                                                <progress max="100" value="<?php if($prof_enroll->capacity != 0){ echo ($prof_enroll->applied / $prof_enroll->capacity) * 100;} else {echo 0;} ?>" id="prgBar"></progress>
                                            </div>
                                            <div class="capacity-text">
                                                Applied: <?php echo $prof_enroll->applied; ?>/ <?php echo $prof_enroll->capacity; ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </a>
                                <?php endforeach; ?>
                              </div>
                            <?php endif; ?>
                        
                        </div>
                        <div class="middle-right-panel">
                            <div class="notices">
                                <h2>Notices</h2>
                                <hr>
                                <p>Whiz introduce following features for you. Upgrade your profile for more features.</p>
                                <br>

                                <div class="slideshow-container">
                                    <div class="mySlides fade">
                                        <div class="numbertext">1 / 3</div>
                                        <img src="<?php echo URLROOT; ?>/imgs/components/carousels/img1.jpg" style="width:100%">
                                        <div class="text">Caption Text</div>
                                    </div>
                                    <div class="mySlides fade">
                                        <div class="numbertext">2 / 3</div>
                                        <img src="<?php echo URLROOT; ?>/imgs/components/carousels/img2.jpg" style="width:100%">
                                        <div class="text">Caption Two</div>
                                    </div>
                                    <div class="mySlides fade">
                                        <div class="numbertext">3 / 3</div>
                                        <img src="<?php echo URLROOT; ?>/imgs/components/carousels/img3.jpg" style="width:100%">
                                        <div class="text">Caption Three</div>
                                    </div>            
                                </div>                        
                                <br>
                                <div class="slideshow-dots" style="text-align:center">
                                    <span class="dot"></span> 
                                    <span class="dot"></span> 
                                    <span class="dot"></span> 
                                </div>
                                
                                
                            </div>
                            <div class="updates">
                                <h2><a href="<?php echo URLROOT.'/profileStatsAndConnections/followings/'.$_SESSION['user_id']; ?>" class="post-link">Following List </a></h2>
                                <hr>
                                <div class="index-following-list">
                                <?php
                                // initial user list
                                    foreach($data['following'] as $follower) {
                                        switch($follower->actor_type) {
                                            case "Student": 
                                                echo '<a href="'.URLROOT.'/C_S_Settings/settings/'.$follower->id.'/'.$_SESSION['user_id'].'" class="card-link">';
                                                break;

                                            case "Organization": 
                                                echo '<a href="'.URLROOT.'/C_O_Settings/settings/'.$follower->id.'/'.$_SESSION['user_id'].'" class="card-link">';
                                                break;

                                            case "Mentor": 
                                                echo '<a href="'.URLROOT.'/C_M_Settings/settings/'.$follower->id.'/'.$_SESSION['user_id'].'" class="card-link">';
                                                break;

                                            default:
                                                // do nothing
                                        }
                                        
                                        echo '<div class="index-user-block">';
                                        echo    '<div class="pic"><img src="'.URLROOT.'/profileimages/'.getActorTypeForIcons($follower->actor_type).'/'.$follower->profile_image.'" alt=""></div>';
                                        echo    '<div class="name">'.$follower->first_name.' '.$follower->last_name.'</div>';
                                        if($follower->status == 'verified'){
                                            echo    '<div class="verified"><img src="'.URLROOT.'/imgs/verified.png" alt=""></div>';
                                        }
                                        echo '</div>';
                                        echo '</a>';
                                    }
                                ?>
                            </div>
                            </div>
                        </div>
                    </div>

                    <!-- BOTTOM PANEL -->
                    <div class="bottom-panel">
                        <p>Whiz © 2021. All Rights Reserved.</p>
                    </div>
                </div>
            </main>
        </div>

         <!-- Carousels -->
         <script type="text/JavaScript" src="<?php echo URLROOT; ?>/js/components/carousels/slideshow.js"></script>

<?php require APPROOT.'/views/inc/footer.php'; ?>