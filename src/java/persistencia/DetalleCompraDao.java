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
public interface DetalleCompraDao {
    public void create(Detallecompra detallecompra) throws PreexistingEntityException, Exception;
        public void grabar(Detallecompra a);

}
