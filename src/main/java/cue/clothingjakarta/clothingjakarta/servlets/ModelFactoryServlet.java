package cue.clothingjakarta.clothingjakarta.servlets;

import cue.clothingjakarta.clothingjakarta.service.impl.SingletonServiceImpl;

public class ModelFactoryServlet {
    SingletonServiceImpl service;

    public SingletonServiceImpl getService() {return service;}
    private static class SingletonHolder {
        // El constructor de Singleton puede ser llamado desde aquí al ser protected
        private final static ModelFactoryServlet eINSTANCE = new ModelFactoryServlet();
    }

    // Método para obtener la instancia de nuestra clase
    public static ModelFactoryServlet getInstance() {
        return SingletonHolder.eINSTANCE;
    }

    public ModelFactoryServlet() {
        System.out.println("invocación clase singleton");
        service = new SingletonServiceImpl();

    }


}
