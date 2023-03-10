package cue.clothingjakarta.clothingjakarta.service;

import cue.clothingjakarta.clothingjakarta.model.Client;

import java.util.List;
import java.util.Map;

public interface ClientService {
    void addClient(String name, String username, String password, String confirm_password, String email, String address);
    List<Client> getClientList();
    Map<String, String> getErrores();
    void messageRegister(String name, String username, String password, String confirm_password, String email, String address);

}
