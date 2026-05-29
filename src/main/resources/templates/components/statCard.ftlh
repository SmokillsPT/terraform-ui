<#macro statCard title value borderClass textClass iconClass progressVal=-1>
<div class="col-xl-3 col-md-6 mb-4 card-stat-hover transition-all">
    <div class="card shadow-sm h-100 py-2 border-0 border-start border-4 border-${borderClass}" style="border-radius: 12px; background: #ffffff;">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col me-2">
                    <div class="text-xs font-weight-bold text-${textClass} text-uppercase mb-1 tracking-wider" style="font-size: 0.75rem; letter-spacing: 0.05em;">
                        ${title}
                    </div>
                    <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                            <div class="h5 mb-0 font-weight-bold text-dark fs-4">${value}</div>
                        </div>
                        <#if (progressVal >= 0)>
                        <div class="col ms-3">
                            <div class="progress progress-sm" style="height: 8px; border-radius: 10px;">
                                <div class="progress-bar bg-${borderClass}" role="progressbar" style="width: ${progressVal}%; border-radius: 10px;" aria-valuenow="${progressVal}" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        </#if>
                    </div>
                </div>
                <div class="col-auto">
                    <i class="${iconClass} fa-2x text-gray-300" style="color: #e2e8f0;"></i>
                </div>
            </div>
        </div>
    </div>
</div>
</#macro>
