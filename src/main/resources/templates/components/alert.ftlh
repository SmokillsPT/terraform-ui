<#macro alert type="info" message="" dismissible=true>
<div class="alert alert-${type} <#if dismissible>alert-dismissible fade show</#if> shadow-sm" role="alert" style="border-radius: 10px;">
    <#if type == "success">
        <i class="fas fa-check-circle me-2"></i>
    <#elseif type == "danger">
        <i class="fas fa-exclamation-circle me-2"></i>
    <#elseif type == "warning">
        <i class="fas fa-exclamation-triangle me-2"></i>
    <#else>
        <i class="fas fa-info-circle me-2"></i>
    </#if>
    ${message}
    <#if dismissible>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </#if>
</div>
</#macro>
