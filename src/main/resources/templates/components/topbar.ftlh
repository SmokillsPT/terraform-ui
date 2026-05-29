<#macro topbar dummyValue="world">
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow-sm px-4 py-3">
    <!-- Sidebar Toggle (Topbar) -->
    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle me-3 text-indigo">
        <i class="fa fa-bars"></i>
    </button>

    <!-- Topbar Search -->
    <form class="d-none d-sm-inline-block form-inline me-auto ms-md-3 my-2 my-md-0 mw-100 navbar-search">
        <div class="input-group">
            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
            <button class="btn btn-indigo text-white" type="button">
                <i class="fas fa-search fa-sm"></i>
            </button>
        </div>
    </form>

    <!-- Topbar Navbar -->
    <ul class="navbar-nav ms-auto align-items-center">
        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
        <li class="nav-item dropdown d-sm-none">
            <a class="nav-link dropdown-toggle text-secondary" href="#" id="searchDropdown" role="button" data-bs-toggle="dropdown" aria-hascontent="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-end p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                        <button class="btn btn-indigo text-white" type="button">
                            <i class="fas fa-search fa-sm"></i>
                        </button>
                    </div>
                </form>
            </div>
        </li>

        <!-- Nav Item - Alerts -->
        <li class="nav-item dropdown no-arrow mx-2">
            <a class="nav-link dropdown-toggle text-secondary position-relative" href="#" id="alertsDropdown" role="button" data-bs-toggle="dropdown" aria-hascontent="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <span class="position-absolute top-2 start-75 translate-middle badge rounded-pill bg-danger" style="font-size: 0.6rem;">3+</span>
            </a>
            <div class="dropdown-list dropdown-menu dropdown-menu-end shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header text-white text-uppercase py-2 px-3 fs-7" style="background-color: #4f46e5;">Alerts Center</h6>
                <a class="dropdown-item d-flex align-items-center py-2 px-3 border-bottom text-decoration-none text-dark" href="#">
                    <div class="me-3">
                        <div class="icon-circle bg-primary text-white rounded-circle d-flex align-items-center justify-content-center" style="width: 2.5rem; height: 2.5rem;">
                            <i class="fas fa-file-alt"></i>
                        </div>
                    </div>
                    <div>
                        <div class="small text-secondary fs-7">May 29, 2026</div>
                        <span class="font-weight-bold fs-7">A new monthly report is ready to download!</span>
                    </div>
                </a>
                <a class="dropdown-item d-flex align-items-center py-2 px-3 border-bottom text-decoration-none text-dark" href="#">
                    <div class="me-3">
                        <div class="icon-circle bg-success text-white rounded-circle d-flex align-items-center justify-content-center" style="width: 2.5rem; height: 2.5rem;">
                            <i class="fas fa-donate"></i>
                        </div>
                    </div>
                    <div>
                        <div class="small text-secondary fs-7">May 28, 2026</div>
                        <span class="fs-7">$290.29 has been deposited into your account!</span>
                    </div>
                </a>
                <a class="dropdown-item d-flex align-items-center py-2 px-3 border-bottom text-decoration-none text-dark" href="#">
                    <div class="me-3">
                        <div class="icon-circle bg-warning text-white rounded-circle d-flex align-items-center justify-content-center" style="width: 2.5rem; height: 2.5rem;">
                            <i class="fas fa-exclamation-triangle"></i>
                        </div>
                    </div>
                    <div>
                        <div class="small text-secondary fs-7">May 25, 2026</div>
                        <span class="fs-7">Spending Alert: We've noticed unusually high spending for your account.</span>
                    </div>
                </a>
                <a class="dropdown-item text-center small text-secondary py-2 d-block text-decoration-none" href="#">Show All Alerts</a>
            </div>
        </li>

        <!-- Nav Item - Messages -->
        <li class="nav-item dropdown no-arrow mx-2">
            <a class="nav-link dropdown-toggle text-secondary position-relative" href="#" id="messagesDropdown" role="button" data-bs-toggle="dropdown" aria-hascontent="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <span class="position-absolute top-2 start-75 translate-middle badge rounded-pill bg-success" style="font-size: 0.6rem;">7</span>
            </a>
            <div class="dropdown-list dropdown-menu dropdown-menu-end shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header text-white text-uppercase py-2 px-3 fs-7" style="background-color: #4f46e5;">Message Center</h6>
                <a class="dropdown-item d-flex align-items-center py-2 px-3 border-bottom text-decoration-none text-dark" href="#">
                    <div class="dropdown-list-image me-3 position-relative">
                        <img class="rounded-circle" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=100&auto=format&fit=crop&q=60" alt="..." style="width: 2.5rem; height: 2.5rem; object-fit: cover;">
                        <div class="status-indicator bg-success position-absolute bottom-0 end-0 rounded-circle border border-white" style="width: 0.6rem; height: 0.6rem;"></div>
                    </div>
                    <div class="font-weight-bold">
                        <div class="text-truncate fs-7">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                        <div class="small text-secondary fs-7">Emily Fowler · 58m</div>
                    </div>
                </a>
                <a class="dropdown-item d-flex align-items-center py-2 px-3 border-bottom text-decoration-none text-dark" href="#">
                    <div class="dropdown-list-image me-3 position-relative">
                        <img class="rounded-circle" src="https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=100&auto=format&fit=crop&q=60" alt="..." style="width: 2.5rem; height: 2.5rem; object-fit: cover;">
                        <div class="status-indicator position-absolute bottom-0 end-0 rounded-circle border border-white" style="width: 0.6rem; height: 0.6rem;"></div>
                    </div>
                    <div>
                        <div class="text-truncate fs-7">I have the photos that you ordered last month, how would you like them sent to you?</div>
                        <div class="small text-secondary fs-7">Jae Chun · 1d</div>
                    </div>
                </a>
                <a class="dropdown-item text-center small text-secondary py-2 d-block text-decoration-none" href="#">Read More Messages</a>
            </div>
        </li>

        <div class="topbar-divider d-none d-sm-block border-start mx-3" style="height: 2rem;"></div>

        <!-- Nav Item - User Information -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle d-flex align-items-center text-decoration-none" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-hascontent="true" aria-expanded="false">
                <span class="me-2 d-none d-lg-inline text-secondary small font-weight-bold">Douglas McGee</span>
                <img class="img-profile rounded-circle" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=100&auto=format&fit=crop&q=60" alt="..." style="width: 2rem; height: 2rem; object-fit: cover;">
            </a>
            <!-- Dropdown - User Information -->
            <div class="dropdown-menu dropdown-menu-end shadow animated--grow-in" aria-labelledby="userDropdown">
                <div class="px-3 py-2 border-bottom">
                    <span class="d-block text-xs text-secondary text-uppercase font-weight-bold">Dummy State</span>
                    <span class="badge bg-indigo text-white fs-7" id="dummy-state-badge">hello: ${dummyValue}</span>
                </div>
                <a class="dropdown-item py-2 text-dark text-decoration-none d-flex align-items-center" href="#">
                    <i class="fas fa-user fa-sm fa-fw me-2 text-secondary"></i>
                    Profile
                </a>
                <a class="dropdown-item py-2 text-dark text-decoration-none d-flex align-items-center" href="#">
                    <i class="fas fa-cogs fa-sm fa-fw me-2 text-secondary"></i>
                    Settings
                </a>
                <a class="dropdown-item py-2 text-dark text-decoration-none d-flex align-items-center" href="#">
                    <i class="fas fa-list fa-sm fa-fw me-2 text-secondary"></i>
                    Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item py-2 text-dark text-decoration-none d-flex align-items-center" href="#" data-bs-toggle="modal" data-bs-target="#logoutModal">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw me-2 text-secondary"></i>
                    Logout
                </a>
            </div>
        </li>
    </ul>
</nav>
</#macro>
