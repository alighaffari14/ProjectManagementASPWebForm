<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SE_Project_Web_Final.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FreedControl | Login</title>
    
    <meta charset="UTF-8"/>
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Remove Tap Highlight on Windows Phone IE -->
    <meta name="msapplication-tap-highlight" content="no"/>

    <link rel="icon" type="image/png" href="assets/img/favicon-16x16.png" sizes="16x16" />
    <link rel="icon" type="image/png" href="assets/img/favicon-32x32.png" sizes="32x32" />

   

    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500' rel='stylesheet' type='text/css' />

    <!-- uikit -->
    <link rel="stylesheet" href="bower_components/uikit/css/uikit.almost-flat.min.css"/>

    <!-- altair admin login page -->
    <link rel="stylesheet" href="assets/css/login_page.min.css" />
    <link rel="stylesheet" href="bower_components/weather-icons/css/weather-icons.min.css" media="all"/>
            
        <!-- metrics graphics (charts) -->
        <link rel="stylesheet" href="bower_components/metrics-graphics/dist/metricsgraphics.css"/>
    
    <!-- uikit -->
    <link rel="stylesheet" href="bower_components/uikit/css/uikit.almost-flat.min.css" media="all"/>


    <!-- altair admin -->
    
    <link rel="stylesheet" href="assets/css/main.min.css" media="all" />
</head>
<body class="login_page">
    <form id="form1" runat="server">
        <div class="uk-grid" data-uk-grid-margin="" data-uk-grid-match="" id="user_profile">
                <div class="uk-width-large-7-10 uk-row-first" style="min-height: 1660px;">
                    <div class="md-card">
                        <div class="user_heading">
                           
                            <div class="user_heading_avatar">
                                <div class="thumbnail">
                                    <img src="assets/img/favicon.png" alt="user avatar" class=""/>
                                </div>
                            </div>
                            <div class="user_heading_content">
                                <h2 class="heading_b uk-margin-bottom"><span class="uk-text-truncate">Freed Control</span><span class="sub-heading">Project Management</span></h2>
                                
                            </div>
                          
                        </div>
                        <div class="user_content">
                            <div class="uk-sticky-placeholder" style="height: 45px; margin: 0px;"><ul id="user_profile_tabs" class="uk-tab" data-uk-tab="{connect:'#user_profile_tabs_content', animation:'slide-horizontal'}" data-uk-sticky="{ top: 48, media: 960 }" style="margin: 0px;">
                                
                              
                               
                            <li class="uk-tab-responsive uk-active uk-hidden" aria-haspopup="true" aria-expanded="false"><a>About</a><div class="uk-dropdown uk-dropdown-small"><ul class="uk-nav uk-nav-dropdown"></ul><div></div></div></li></ul></div>
                            <ul id="user_profile_tabs_content" class="uk-switcher uk-margin">
                                <li aria-hidden="false" class="uk-active">
                                    <div class="uk-grid uk-margin-medium-top uk-margin-large-bottom" data-uk-grid-margin="">
                                        <div class="uk-width-large-1-2 uk-row-first">
                                            <h4 class="heading_c uk-margin-small-bottom">Contact Info</h4>
                                            <ul class="md-list md-list-addon">
                                                <li>
                                                    <div class="md-list-addon-element">
                                                        <i class="md-list-addon-icon material-icons"></i>
                                                    </div>
                                                    <div class="md-list-content">
                                                        <span class="md-list-heading">alighaffari14@hotmail.com</span>
                                                        <span class="uk-text-small uk-text-muted">Email</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="md-list-addon-element">
                                                        <i class="md-list-addon-icon material-icons"></i>
                                                    </div>
                                                    <div class="md-list-content">
                                                        <span class="md-list-heading">0303-0765226</span>
                                                        <span class="uk-text-small uk-text-muted">Phone</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="md-list-addon-element">
                                                        <i class="md-list-addon-icon uk-icon-facebook-official"></i>
                                                    </div>
                                                    <div class="md-list-content">
                                                        <span class="md-list-heading"><a href="https://facebook.com/alighaffari63"> facebook.com/alighaffari63</a></span>
                                                        <span class="uk-text-small uk-text-muted">Facebook</span>
                                                    </div>
                                                </li>
                                               
                                            </ul>
                                        </div>
                                        <div class="uk-width-large-1-2">
                                            <h4 class="heading_c uk-margin-small-bottom">Our Experties</h4>
                                            <ul class="md-list">
                                                <li>
                                                    <div class="md-list-addon-element">
                                                        <i class="md-list-addon-icon uk-icon-dashboard"></i>
                                                    </div>
                                                    <div class="md-list-content">
                                                        <span class="md-list-heading"><a href="#">Web based solutions</a></span>
                                                        <span class="uk-text-small uk-text-muted"></span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="md-list-addon-element">
                                                        <i class="md-list-addon-icon uk-icon-desktop"></i>
                                                    </div>
                                                    <div class="md-list-content">
                                                        <span class="md-list-heading"><a href="#">Desktop based solutions</a></span>
                                                        <span class="uk-text-small uk-text-muted"></span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="md-list-addon-element">
                                                        <i class="md-list-addon-icon uk-icon-mobile"></i>
                                                    </div>
                                                    <div class="md-list-content">
                                                        <span class="md-list-heading"><a href="#">Mobile Applications</a></span>
                                                        <span class="uk-text-small uk-text-muted"></span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="md-list-addon-element">
                                                        <i class="md-list-addon-icon uk-icon-paperclip"></i>
                                                    </div>
                                                    <div class="md-list-content">
                                                        <span class="md-list-heading"><a href="#">Management Systems</a></span>
                                                        <span class="uk-text-small uk-text-muted"></span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                   
                                   
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div class="uk-width-large-3-10" style="min-height: 1660px;">
                    <div class="md-card">
                       
                             <div class="login_page_wrapper">
        <div class="md-card" id="login_card">
            <div class="md-card-content large-padding" id="login_form">
                <div class="login_heading">
                    <div class="user_avatar">

                    </div>
                </div>
                <div id="Alert" runat="server" class=" data-uk-alert" >
                               
                               </div>
                    <div class="uk-form-row">
                        <asp:Label ID="Label1" runat="server" Text="Label">Username</asp:Label>
                        
                        
                                 <asp:TextBox ID="TxtUserName" class="md-input" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rfvTxtUserName"  ControlToValidate="TxtUserName" runat="server" BackColor="Red" Display="Dynamic" ErrorMessage="This field is required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="uk-form-row">
                        <asp:Label ID="Label2" runat="server" Text="Label">Password</asp:Label>
                       
                       
                        <asp:TextBox ID="TxtPassword" TextMode="Password" class="md-input" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rfvTxtPassword" runat="server" ControlToValidate="TxtPassword" BackColor="Red" Display="Dynamic" ErrorMessage="This field is required"></asp:RequiredFieldValidator>

                    </div>
                    <div class="uk-margin-medium-top">
                        
                                     <asp:Button ID="BtnSignIn" OnClick="BtnSignIn_Click" runat="server" class="md-btn md-btn-primary md-btn-block md-btn-large" Text="Sign In" />
                    </div>
                    <div class="uk-margin-top">
                        <a href="CreateUser.aspx">SignUp/Register Here</a>
                        <span class="icheck-inline">
                            <input type="checkbox" name="login_page_stay_signed" id="login_page_stay_signed data-md-icheck "/>
                            <asp:Label ID="Label3" runat="server" Text="Label">Stay signed in</asp:Label>
                        </span>
                    </div>
                
               
                
            </div>
            <div class="md-card-content large-padding uk-position-relative" id="login_help" style="display: none">
                <button type="button" class="uk-position-top-right uk-close uk-margin-right uk-margin-top back_to_login"></button>
                <h2 class="heading_b uk-text-success">Can't log in?</h2>
                <p>Here’s the info to get you back in to your account as quickly as possible.</p>
                <p>First, try the easiest thing: if you remember your password but it isn’t working, make sure that Caps Lock is turned off, and that your username is spelled correctly, and then try again.</p>
                <p>If your password still isn’t working, it’s time to <a href="#" id="password_reset_show">reset your password</a>.</p>
            </div>
            <div class="md-card-content large-padding" id="login_password_reset" style="display: none">
                <button type="button" class="uk-position-top-right uk-close uk-margin-right uk-margin-top back_to_login"></button>
                <h2 class="heading_a uk-margin-large-bottom">Reset password</h2>
                
                    <div class="uk-form-row">
                        <label for="login_email_reset">Your email address</label>
                        <input class="md-input" type="text" id="login_email_reset" name="login_email_reset" />
                    </div>
                    <div class="uk-margin-medium-top">
                        <a href="#" class="md-btn md-btn-primary md-btn-block">Reset password</a>
                    </div>
               
            </div>
           
        </div>
        
    </div>
                          
                    </div>
                </div>
            </div>
     

    <!-- common functions -->
    <script src="assets/js/common.min.js"></script>
        
    <!-- altair core functions -->
    <script src="assets/js/altair_admin_common.min.js"></script>

    <!-- altair login page functions -->
    <script src="assets/js/pages/login.min.js"></script>
    </form>
</body>
</html>
