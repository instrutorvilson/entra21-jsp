package controlador;

import dao.DaoContato;
import modelos.Contato;

public class ContatoController {
	
     public boolean salvar(Contato contato) {   
    	 /*regras de negocio*/
    	 boolean ok = DaoContato.salvar(contato);
    	 return ok;
     }
     
     public boolean editar(Contato contato) {   
    	 /*regras de negocio*/
    	 boolean ok = DaoContato.editar(contato);
    	 return ok;
     }
     
     public Contato consultarPorId(int id) {
    	 Contato ct = DaoContato.consultar(id);
    	 /*regras de negocio*/
    	 return ct;
     }
     
     
}
