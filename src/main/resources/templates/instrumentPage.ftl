<#import "parts/common.ftl" as c/>

<@c.page>
<div class="body">
    <b>${instrument.type}</b>
    <b>${instrument.title}</b>
    <b>${instrument.description}</b>
    <b>${instrument.price}</b>
</div>

<div>Comments</div>

<#include "parts/commentEdit.ftl"/>

<#include "parts/commentList.ftl"/>

</@c.page>