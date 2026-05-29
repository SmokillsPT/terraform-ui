<#macro button label type="button" class="btn-indigo" icon="" onclick="" id="">
<button <#if id?has_content>id="${id}"</#if> type="${type}" class="btn shadow-sm ${class}" <#if onclick?has_content>onclick="${onclick}"</#if>>
    <#if icon?has_content><i class="${icon} me-1"></i></#if>${label}
</button>
</#macro>
