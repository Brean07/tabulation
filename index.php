<!DOCTYPE html>
<html lang="en">

<?php include('header2.php'); ?>

<body style="background: url('') no-repeat center fixed; background-size: 500px 500px; opacity: 0.95;">

  <!-- Navbar -->
  <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container">
        <a href="#" data-toggle="modal" data-target="#about-modal" class="brand">
          <font size="2" style="color: white;">ABOUT</font>
        </a>
      </div>
    </div>
  </div>

  <!-- Header Section -->
  <header class="jumbotron subhead" id="overview" style="background-color: rgb(0, 72, 114); color: white; padding: 5px 0;">
    <div class="container">
      <center>
        <h1 style="color: #ffffff; font-size: clamp(2rem, 5vw, 4rem);">ACLC College of Marbel</h1>
      </center>
      <center>
        <p class="lead" style="color: #ffffff; font-size: clamp(1rem, 3vw, 1.5rem);">A member of the AMA Education System</p>
      </center>
    </div>
  </header>

  <!-- Main Content -->
  <div class="container">
    <!-- About Modal -->
    <div class="modal fade" id="about-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
      <div class="modal-dialog modal-sm">
        <div class="modal-content" align="center">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3 class="modal-title" id="Login">ACLC College of Marbel</h3><br>
            <p>A member of the AMA Education System</p>
          </div>
          <div class="modal-body">
            <p>Address: <strong>3F Del Rosario Bldg. Gensan Drive Cor. Zulueta Street, Koronadal, Philippines</strong></p>
            <p>Email: <strong>aclcmarbelcampus@gmail.com</strong></p>
            <p>Mobile Number: <strong>0917 507 5805</strong></p>
            <p>Facebook Page:
              <a href="https://www.facebook.com/aclcmarbelcampusofficial" target="_blank">
                <strong>https://www.facebook.com/aclcmarbelcampusofficial</strong>
              </a>
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- End About Modal -->

    <!-- Login Form -->
    <form method="POST" action="login.php">
      <br />
      <table cellpadding="10" cellspacing="0" border="0" align="center" style="border-collapse: separate; border-spacing: 0; border-radius: 5px; overflow: hidden; box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);">
        <thead>
          <th align="center" style="background-color: rgb(0, 72, 114); color: white; padding: 10px; border-top-left-radius: 5px; border-top-right-radius: 5px;">
            <h4>USER LOGIN</h4>
          </th>
        </thead>
        <tr style="background-color: rgb(210, 226, 241);">
          <td style="padding: 20px 40px 20px 20px; opacity: 0.95;">
            <h5><i class="icon-user"></i> USERNAME:</h5>
            <input style="font-size: large; height: 35px; text-indent: 7px; border-radius: 3px; border: 1px solid #ccc; width: 100%;" class="form-control btn-block" type="text" name="username" placeholder="Username" required />
            <h5 style="margin-top: 20px;"><i class="icon-lock"></i> PASSWORD:</h5>
            <input style="font-size: large; height: 35px; text-indent: 7px; border-radius: 3px; border: 1px solid #ccc; width: 100%;" class="form-control btn-block" type="password" name="password" placeholder="Password" required />
            <br /><br />
            <button style="width: 160px; background-color: rgb(0, 72, 114); color: white; border: none; padding: 10px; border-radius: 3px; cursor: pointer;" type="submit" class="btn btn-primary pull-right">
              <i class="icon-ok"></i> <strong>LOGIN</strong>
            </button>
            <div style="margin-top: 10px;">
              <strong>Register <a href="create_account.php" style="color: rgb(0, 72, 114); text-decoration: none;">here &raquo;</a></strong>
            </div>
          </td>
        </tr>
      </table>
    </form>

    <!-- Footer -->
    <center>
      <div class="container">
        <hr>
        <font size="3" class=""><strong>Judging Management System &COPY; <?= date("Y") ?> </strong></font><br />
      </div>
    </center>
  </div>

  <!-- JavaScript Files -->
  <script src="assets/js/jquery.js"></script>
  <script src="assets/js/bootstrap-transition.js"></script>
  <script src="assets/js/bootstrap-alert.js"></script>
  <script src="assets/js/bootstrap-modal.js"></script>
  <script src="assets/js/bootstrap-dropdown.js"></script>
  <script src="assets/js/bootstrap-scrollspy.js"></script>
  <script src="assets/js/bootstrap-tab.js"></script>
  <script src="assets/js/bootstrap-tooltip.js"></script>
  <script src="assets/js/bootstrap-popover.js"></script>
  <script src="assets/js/bootstrap-button.js"></script>
  <script src="assets/js/bootstrap-collapse.js"></script>
  <script src="assets/js/bootstrap-carousel.js"></script>
  <script src="assets/js/bootstrap-typeahead.js"></script>
  <script src="assets/js/bootstrap-affix.js"></script>
  <script src="assets/js/holder/holder.js"></script>
  <script src="assets/js/google-code-prettify/prettify.js"></script>
  <script src="assets/js/application.js"></script>

</body>

</html>
