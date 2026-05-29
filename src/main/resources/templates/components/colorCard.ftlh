<#macro colorCard name hex bgClass textClass="text-white">
<div class="col-lg-6 mb-4 card-stat-hover transition-all">
    <div class="card shadow-sm border-0 ${bgClass} ${textClass}" style="border-radius: 12px;">
        <div class="card-body p-4">
            <div class="fw-bold">${name}</div>
            <div class="small opacity-75">${hex}</div>
        </div>
    </div>
</div>
</#macro>
