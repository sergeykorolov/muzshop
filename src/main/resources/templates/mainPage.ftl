<#import "parts/common.ftl" as c>

<@c.page>
<div class="body">
    <#list instruments as instrument>
        <a href="/musicShop/instrumentPage?instrumentId=${instrument.id}">
            <div class="item">
                <b>${instrument.type}</b>
                <b>${instrument.title}</b>
                <b>${instrument.description}</b>
                <b>${instrument.price}</b>
            </div>
        </a>
    </#list>
</div>
</@c.page>

