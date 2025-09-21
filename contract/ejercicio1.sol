//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/*
 @title Contrato Mensaje
 @author i3arba - 77 Innovation Labs
 @notice Este contrato forma parte del primer proyecto
 del Ethereum Developer Pack
 @custom:security Este es un contrato educativo
 y no debe ser usado en producción
 */
 ///@notice evento emitido para actualizacion de mensaje
contract Mensaje {

    event MensajeActualizado(string mensaje);
     ///@notice variable para almacenar mensajes
     string s_mensaje;

    /*
        @notice función para actualizar el mensaje
        @param _mensaje mensaje a almacenar
    */
    function setMensaje(string memory _mensaje) external {
        s_mensaje = _mensaje;
        emit MensajeActualizado(_mensaje);
    }
    /*
        @notice función para obtener el mensaje almacenado
    */
    function getMensaje() public view returns(string memory mensaje_) {
        mensaje_ = s_mensaje;
    }
}