package fiuba.materia7510.aplicacion.publicador

//import grails.gorm.transactions.*
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import static org.springframework.http.HttpMethod.*
import grails.converters.JSON
import fiuba.materia7510.aplicacion.generador.Regla

//@Transactional(readOnly = true)

class PublicadorController  {
	//static defaultAction = "publicacion"
	
	def iniciar(){
		render (view:'iniciarMonitor')
	}
	def derivar_Iniciar(){
		redirect (action:"iniciar")
	}
	def derivar_InicioGrails(){ 
		redirect (uri: '/' )
		}
	def derivar_Reglas(){
		render view:"seleccionarReglaMaestraVista", model: [reglas:Regla.list()]
	}	
    def derivar_estrategia_1(){ 
		redirect (controller:"estratega", action:"derivar_estrategia_1" )
		}
	def derivar_estrategia_2(){ 
		redirect (controller:"estratega", action:"derivar_estrategia_2")
		}
	def derivar_TicketController(){
		redirect (controller:"ticket", action:"renderizar_Tickets")
		}
	def derivar_TicketShow(){
		flash.message = "Agrege un id para visualizar un ticket específico.(En el campo de direcciones del navegador)"
		redirect (uri:'/ticketsmock')
	}			
    def derivar_AgregarTicket(){
		
		redirect (controller:"ticket", action:"index")
		}
   
	
	static responseFormats = ['json']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
       // respond publicadorService.list(params), model:[publicadorCount: publicadorService.count()]
    }

    def show(Long id) {
        //respond publicadorService.get(id)
    }

	def publicar() {
		def dato_json ='[{  value: 30, color:"#1abc9c"},{value : 50,color : "#2ecc71"},{value : 100,color : "#3498db"},{value : 40,color : "#9b59b6"}, {value : 120,color : "#34495e"}]';
		
		def dato_no_json = [status_temp: 25, status_pending: 25, status_partial: 25, status_complete: 25]
    
		def un_dato_json = [value: 15]
		
		//render(dato_json as JSON)
			
		respond un_dato_json
					
		}
	
 
 }
