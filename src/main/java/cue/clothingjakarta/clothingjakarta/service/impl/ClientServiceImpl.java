package cue.clothingjakarta.clothingjakarta.service.impl;

import cue.clothingjakarta.clothingjakarta.model.Client;
import cue.clothingjakarta.clothingjakarta.service.ClientService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ClientServiceImpl implements ClientService {
    private final List<Client> clientList = new ArrayList<>();

    public List<Client> getClientList() {return clientList;}
    private Map<String, String> errores = new HashMap<String, String>();

    public Map<String, String> getErrores() {return errores;}

    @Override
    public void addClient(String name, String username, String password, String confirm_password, String email, String address) {
        clientList.add(new Client(name, username, password, confirm_password, email, address));
    }


    public void messageRegister(String name, String username, String password, String confirm_password, String email, String address) {
        errores.clear();
        if(name==null||name.isBlank()){
            errores.put("name","Es requirido poner el nombre");
        }if(username == null||username.isBlank()){
            errores.put("username","Es requirido poner un username");
        }if(email == null||!email.contains("@")){
            errores.put("email","Es requerido poner un email valido");
        }if(address == null||address.isBlank()){
            errores.put("address","Es requirido poner una direccion para la entrega");
        }
        if (password== null||password.isBlank()){
            errores.put("password","El password es requerido");
        }
        if (confirm_password==null||confirm_password.isBlank()){
            errores.put("confirm_password","Necesitas volver a confirmar tu contraseña");
        }/*if (confirm_password!=password){
            errores.put("confirm_password","No concuerda con la contraseña ");
        }*/
        if (errores.size()==0){
            addClient(name, username, password, confirm_password, email, address);
        }
    }
}
