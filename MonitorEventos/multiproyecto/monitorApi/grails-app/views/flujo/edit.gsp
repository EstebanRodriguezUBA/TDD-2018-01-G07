<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'flujo.label', default: 'Flujo')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-flujo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-flujo" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.flujo}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.flujo}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.flujo}" method="PUT">
                <g:hiddenField name="version" value="${this.flujo?.version}" />
                <fieldset class="form">
                  <!-- <f:all bean="flujo"/>-->
                    
                    <f:all except="estados" bean="flujo"/>                
          
                </fieldset>
        <!--       
        	<fieldset class="form">
                 <div style="background-color:lightgrey; width: 50vw;margin:10vw">
                    
                    <label for="estados">Cambiar Estado</label>
                    <g:select name="estado"from="${estados}"	size="5"  optionKey="id" 														multiple="false"	value="${flujo?.estados}" />
       						</div>	             
					</fieldset>
          -->
          <fieldset class="buttons">
                    <input class="save" type="submit" 
                    value="${message(code:'default.button.update.label', default: 'Update')}" />
           </fieldset>
           <fieldset class="buttons">
                    <g:actionSubmit value="Agregar Estado" action="agregarEstado"/>
           </fieldset>
            </g:form>
     
        </div>
    </body>
</html>
