<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'proyecto.label', default: 'Proyecto')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-proyecto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-proyecto" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.proyecto}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.proyecto}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.proyecto}" method="PUT">
                <g:hiddenField name="version" value="${this.proyecto?.version}" />
                <fieldset class="form">
                    <f:all bean="proyecto"/>
                </fieldset>

                <br/>
                <div style="border-style:solid;border-color:black;border-width:1px;background-color:#E0FFFF;width:350px;text-align:center">
                            <table width="300" >
                              <td>Nuevo Ticket:</td>
                              <tr>
                                <td>Nombre:</td>
                                <td>
                                  <g:textField name="nombre" value="${myValue}" />
                                </td>
                              </tr>
                              <tr>
                                <td>TipoDeSiclo:</td>
                                <td>
                                  <g:select name="tipoDeSiclo" from="${['Primer siclo', 'Segundo siclo']}" />
                                </td>
                              </tr>
                                <td> &nbsp; </td>
                                <td><g:actionSubmit action="agregarTicekt" value="Crear"/></td>
                              </tr>
                            </table>
                          </div>
                  </fieldset>

                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>