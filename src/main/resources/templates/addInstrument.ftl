<#import "parts/common.ftl" as c>

<@c.page>
<h3>Добавление инструмента</h3>

    <div>
        <form method="post">
            <input type="text" name="type" placeholder="Тип инструмента">
            <input type="text" name="title" placeholder="Название">
            <input type="text" name="description" placeholder="Описание">
            <input type="text" name="price" placeholder="Цена">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Добавить</button>
        </form>
    </div>
</@c.page>