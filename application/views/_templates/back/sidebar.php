      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="profile-image">
                  <img class="img-xs rounded-circle" src="<?= base_url('assets/template/back/'); ?>images/faces/face8.jpg" alt="profile image">
                  <div class="dot-indicator bg-success"></div>
                </div>
                <div class="text-wrapper">
                  <p class="profile-name"><?= $user->nama; ?></p>
                  <p class="designation">Administrator</p>
                </div>
              </a>
            </li>
            <li class="nav-item nav-category">Main Menu</li>
            <li class="nav-item">
              <a class="nav-link" href="<?= base_url('products'); ?>">
                <i class="menu-icon typcn typcn-shopping-bag"></i>
                <span class="menu-title">Produk</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <i class="menu-icon typcn typcn-coffee"></i>
                <span class="menu-title">Konfigurasi</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item">
                    <a class="nav-link" href="<?= base_url('pages'); ?>">Menu Homepage</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="<?= base_url('web'); ?>">Info Website</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="<?= base_url('admin'); ?>">Administrator</a>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </nav>