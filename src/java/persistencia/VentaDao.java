/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import persistencia.exceptions.PreexistingEntityException;

/**
 *
 * @author toni
 */
public interface VentaDao {

    public void create(Venta venta) throws PreexistingEntityException, Exception;

    
    public String grabar(Venta a);

}
