<#include "security.ftl">

<div class="card-columns">
    <#list comments as comment>
        <div class="card my-3">
        <#if comment.filename??>
                <img src="/img/${comment.filename}" class="card-img-top">
        </#if>
            <div class="m-2">
                <i>${comment.text}</i><br/>
                <i>${comment.date?datetime}</i>
            </div>
            <div class="card-footer text-muted">
                <a href="/user-comments/${comment.author.id}">${comment.authorName}</a>
                <#if comment.author.id == currentUserId>
                    <a class="btn btn-primary" href="/user-comments/${comment.author.id}?comment=${comment.id}">
                        Edit
                    </a>
                </#if>
            </div>
        </div>
    <#else>
    <i>No message</i>
    </#list>
</div>