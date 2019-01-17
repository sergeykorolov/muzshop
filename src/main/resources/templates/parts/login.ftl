<#include "security.ftl">

<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">User Name :</label>
        <div class="col-sm-6">
            <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                   class="form-control ${(usernameError??)?string('is-invalid', '')}"
                   placeholder="User name" />
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password:</label>
        <div class="col-sm-6">
            <input type="password" name="password"
                   class="form-control ${(passwordError??)?string('is-invalid', '')}"
                   placeholder="Password" />
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
    </div>
    <#if isRegisterForm>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password:</label>
        <div class="col-sm-6">
            <input type="password" name="password2"
                   class="form-control ${(password2Error??)?string('is-invalid', '')}"
                   placeholder="Retype password" />
            <#if password2Error??>
                <div class="invalid-feedback">
                    ${password2Error}
                </div>
            </#if>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Email:</label>
        <div class="col-sm-6">
            <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                   class="form-control ${(emailError??)?string('is-invalid', '')}"
                   placeholder="some@some.com" />
            <#if emailError??>
                <div class="invalid-feedback">
                    ${emailError}
                </div>
            </#if>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="g-recaptcha" data-sitekey="6LfnVIUUAAAAAARj0X051OxRv6UlOOwwSYj1cmrk"></div>
        <#if captchaError??>
        <div class="alert alert-danger" role="alert">
            ${captchaError}
        </div>
        </#if>
    </div>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <div class="col-sm-2" style="display: inline-block"></div>
    <button class="btn btn-primary col-sm-2" type="submit"><#if isRegisterForm>Готово<#else>Войти</#if></button>
    <div class="mt-3">
        <#if !isRegisterForm>
            <div class="col-sm-2" style="display: inline-block"></div>
            <a href="/registration">Зарегистрироваться</a>
        </#if>
    </div>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button class="btn btn-primary" type="submit">Выйти</button>
</form>
</#macro>

<#macro enter>
    <form action="/login" method="get">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit">Войти</button>
    </form>
</#macro>