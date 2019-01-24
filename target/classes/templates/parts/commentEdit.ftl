<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
   aria-controls="collapseExample">
    Comment editor
</a>
<div class="collapse <#if comment??>show</#if>" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control ${(textError??)?string('is-invalid', '')}"
                       value="<#if comment??>${comment.text}</#if>" name="text" placeholder="Enter comment"/>
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <#if comment??>
                <input type="hidden" name="instrumentId" value="${comment.instrumentId}">
            <#else>
                <input type="hidden" name="instrumentId" value="${instrument.id}">
            </#if>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="hidden" name="id" value="<#if comment??>${comment.id}</#if>">
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Save comment</button>
            </div>
        </form>
    </div>
</div>