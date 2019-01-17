<#import "parts/common.ftl" as c>

<@c.page>
<div class="body">
    <b>${instrument.type}</b>
    <b>${instrument.title}</b>
    <b>${instrument.description}</b>
    <b>${instrument.price}</b>
</div>

<div>Comments</div>
<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
   aria-controls="collapseExample">
    Add new message
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
            <input type="hidden" name="instrumentId" value="${instrument.id}">
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Add comment</button>
            </div>
        </form>
    </div>
</div>

<div class="card-columns">
    <#list comments as comment>
    <div class="card my-3">
        <#if comment.filename??>
                <img src="/img/${comment.filename}" class="card-img-top">
        </#if>
        <div class="m-2">
            <i>${comment.text}</i>
            <i>${comment.date?datetime}</i>
        </div>
        <div class="card-footer text-muted">
            ${comment.authorName}
        </div>
    </div>
    <#else>
    <i>No message</i>
    </#list>
</div>
</@c.page>