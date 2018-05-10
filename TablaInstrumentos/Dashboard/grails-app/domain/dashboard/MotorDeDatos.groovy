package dashboard
import fiuba.materia7510.aplicacion


class MotorDeDatos{
    int moke = 0
    int numero
    String nombre
    List<Instrumento> listeners

    protected void agragarListener(Instrumento listener) {
    		listeners.add(listener)
    }

    protected void informarCambioEstado() {
  		for(Instrumento listener : listeners) {
  			listener.informar(this)
  		}
  	}

    public MotorDeDatos(){
    }

    public void tomarDatos(){
      numero++
      informarCambioEstado()
    }

    public int tomarContador(){
      return numero
    }

    static constraints = {
    		nombre display: true
        moke display: false
    }
}
