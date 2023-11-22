package controlador;

import dao.DaoContato;
import modelos.Contato;

public class ContatoController {
	
     public boolean salvar(Contato contato) {   
    	 /*regras de negocio*/
    	 boolean ok = DaoContato.salvar(contato);
    	 return ok;
     }
     
     
}
