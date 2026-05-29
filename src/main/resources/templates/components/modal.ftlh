<#macro modal id title footerHtml="">
<div class="modal fade" id="${id}" tabindex="-1" role="dialog" aria-labelledby="${id}Label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content border-0 shadow" style="border-radius: 16px;">
            <div class="modal-header border-bottom py-3 px-4">
                <h5 class="modal-title font-weight-bold text-indigo" id="${id}Label" style="color: #4f46e5;">${title}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body p-4 fs-6 text-secondary">
                <#nested>
            </div>
            <#if footerHtml?has_content>
            <div class="modal-footer border-top bg-light py-3 px-4" style="border-bottom-left-radius: 16px; border-bottom-right-radius: 16px;">
                ${footerHtml}
            </div>
            </#if>
        </div>
    </div>
</div>
</#macro>
