package cue.clothingjakarta.clothingjakarta.service.impl;

import cue.clothingjakarta.clothingjakarta.service.ClientService;
import cue.clothingjakarta.clothingjakarta.service.ClothingService;

public class SingletonServiceImpl {
    private final ClientService clientService;
    private final ClothingService clothingService;


    public SingletonServiceImpl() {
        this.clientService = (ClientService) new ClientServiceImpl();
        this.clothingService= (ClothingService) new ClothingServiceImpl();
    }

    public ClientService getClientService() {return clientService;}

    public ClothingService getClothingService() {return clothingService;}
}
