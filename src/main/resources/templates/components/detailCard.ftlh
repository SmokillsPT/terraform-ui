<#macro detailCard title>
<div class="card shadow-sm mb-4 border-0" style="border-radius: 12px; overflow: hidden;">
    <div class="card-header bg-white py-3 border-bottom d-flex flex-row align-items-center justify-content-between">
        <h6 class="m-0 font-weight-bold text-indigo fs-6" style="color: #4f46e5;">${title}</h6>
        <div class="dropdown no-arrow">
            <a class="dropdown-toggle text-secondary text-decoration-none" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-hascontent="true" aria-expanded="false">
                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-end shadow animated--grow-in" aria-labelledby="dropdownMenuLink">
                <div class="dropdown-header text-uppercase fs-8 text-secondary">Card Actions:</div>
                <a class="dropdown-item py-2 text-dark text-decoration-none d-block" href="#">Action</a>
                <a class="dropdown-item py-2 text-dark text-decoration-none d-block" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item py-2 text-dark text-decoration-none d-block" href="#">Something else here</a>
            </div>
        </div>
    </div>
    <div class="card-body bg-white p-4">
        <#nested>
    </div>
</div>
</#macro>
