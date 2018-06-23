<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'flujo.label', default: 'Flujo')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-flujo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-flujo" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
            <g:form resource="${this.flujo}" method="POST">
                <fieldset class="form">
                <!--  <f:all  bean="flujo"/>-->
            
                    <f:all except="estados" bean="flujo"/>
        
        <!--          
          <div style="background-color:lightgrey; width: 50vw;margin:10vw">
                    <label for="estados">Agregar Estado</label>
                    <g:select name="estados"from="${estado}"	size="5"  optionKey="id" 													value="${flujo?.estados}" />
                    <div style="background-color:lightblue">
  
					</div> 
                    
                </fieldset>
         -->   
          <!--      <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
                
              -->  
                 <fieldset class="buttons">
                    <g:actionSubmit value="Agregar Estado" action="agregarEstado"/>
           </fieldset>
            </g:form>
        </div>
    </body>
</html>
