package cue.clothingjakarta.clothingjakarta.servlets;

import cue.clothingjakarta.clothingjakarta.model.Clothing;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.swing.text.Document;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ClothingServlet", urlPatterns = "/clothing-send")
public class ClothingServlet extends HttpServlet {

    ModelFactoryServlet mfs = ModelFactoryServlet.getInstance();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        session.setAttribute("clothingList", mfs.getService().getClothingService().getClothingList());
        resp.sendRedirect("sell.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("product__title");
        Double price = Double.valueOf(req.getParameter("product__price"));


        mfs.getService().getClothingService().addFood(name,price);
        System.out.println("Name: "+name);
        System.out.println("Price: "+price);
        HttpSession session = req.getSession();
        session.setAttribute("clothingList", mfs.getService().getClothingService().getClothingList());
        resp.sendRedirect("products.jsp");
        /*String id = req.getParameter("comprar");
        if(id != null){
            switch (id){
                case "comprar":
                    clothingList.add(new Clothing(name,price));
            }
        }*/

    }

    @Override
    public void init() throws ServletException {String msg ="hola";}

}
