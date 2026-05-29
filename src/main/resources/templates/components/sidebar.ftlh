<#macro sidebar activePage="dashboard">
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center py-4 text-decoration-none" href="/dummy">
        <div class="sidebar-brand-icon rotate-n-15 me-2">
            <i class="fas fa-laugh-wink fa-2x text-warning"></i>
        </div>
        <div class="sidebar-brand-text mx-1 fs-5 fw-bold tracking-wide">SB Admin <sup>5</sup></div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item ${ (activePage == 'dashboard')?then('active', '') }">
        <a class="nav-link d-flex align-items-center py-3 text-white-50 ${ (activePage == 'dashboard')?then('text-white fw-bold', '') }" href="/dummy">
            <i class="fas fa-fw fa-tachometer-alt me-2"></i>
            <span>Dashboard</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading text-uppercase text-white-50 fs-7 fw-bold px-3 mb-2">
        Interface
    </div>

    <!-- Nav Item - Components Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed d-flex align-items-center py-2 text-white-50" href="#" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-cog me-2"></i>
            <span>Components</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionSidebar">
            <div class="collapse-inner">
                <h6 class="collapse-header">Custom Components:</h6>
                <a class="collapse-item" href="#" data-bs-toggle="modal" data-bs-target="#logoutModal">Buttons</a>
                <a class="collapse-item" href="#" data-bs-toggle="modal" data-bs-target="#logoutModal">Cards</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed d-flex align-items-center py-2 text-white-50" href="#" data-bs-toggle="collapse" data-bs-target="#collapseUtilities" aria-expanded="false" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-wrench me-2"></i>
            <span>Utilities</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-bs-parent="#accordionSidebar">
            <div class="collapse-inner">
                <h6 class="collapse-header">Custom Utilities:</h6>
                <a class="collapse-item" href="#">Colors</a>
                <a class="collapse-item" href="#">Borders</a>
                <a class="collapse-item" href="#">Animations</a>
                <a class="collapse-item" href="#">Other</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading text-uppercase text-white-50 fs-7 fw-bold px-3 mb-2">
        Addons
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed d-flex align-items-center py-2 text-white-50" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
            <i class="fas fa-fw fa-folder me-2"></i>
            <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-bs-parent="#accordionSidebar">
            <div class="collapse-inner">
                <h6 class="collapse-header">Login Screens:</h6>
                <a class="collapse-item" href="#">Login</a>
                <a class="collapse-item" href="#">Register</a>
                <a class="collapse-item" href="#">Forgot Password</a>
                <div class="dropdown-divider"></div>
                <h6 class="collapse-header">Other Pages:</h6>
                <a class="collapse-item" href="#">404 Page</a>
                <a class="collapse-item" href="#">Blank Page</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link d-flex align-items-center py-2 text-white-50" href="#">
            <i class="fas fa-fw fa-chart-area me-2"></i>
            <span>Charts</span>
        </a>
    </li>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link d-flex align-items-center py-2 text-white-50" href="#">
            <i class="fas fa-fw fa-table me-2"></i>
            <span>Tables</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline mt-3">
        <button class="rounded-circle border-0 bg-white-20 text-white" id="sidebarToggle" style="width: 2.5rem; height: 2.5rem; background-color: rgba(255,255,255,0.2);">
            <i class="fas fa-angle-left"></i>
        </button>
    </div>
</ul>
</#macro>
