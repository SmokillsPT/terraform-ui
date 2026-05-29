<#macro progressBar label value bgClass>
<div class="mb-3">
    <div class="d-flex justify-content-between align-items-center mb-1">
        <span class="small font-weight-bold text-secondary">${label}</span>
        <span class="small font-weight-bold text-dark">${value}</span>
    </div>
    <div class="progress" style="height: 10px; border-radius: 10px; background-color: #f1f5f9;">
        <div class="progress-bar ${bgClass}" role="progressbar" style="width: ${value}; border-radius: 10px;" aria-valuenow="${value?replace('%','')}" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
</div>
</#macro>
