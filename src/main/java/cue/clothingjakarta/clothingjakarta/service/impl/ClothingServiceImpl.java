package cue.clothingjakarta.clothingjakarta.service.impl;

import cue.clothingjakarta.clothingjakarta.model.Clothing;
import cue.clothingjakarta.clothingjakarta.service.ClothingService;

import java.util.ArrayList;
import java.util.List;

public class ClothingServiceImpl implements ClothingService {
    private final List<Clothing> clothingList = new ArrayList<>();

    public List<Clothing> getClothingList() {return clothingList;}

    public void addFood(String name, Double price){
        clothingList.add(new Clothing(name,price));
    }

}
