package cue.clothingjakarta.clothingjakarta.service;

import cue.clothingjakarta.clothingjakarta.model.Clothing;

import java.util.List;
import java.util.Map;

public interface ClothingService {
    void addFood(String name, Double price);
    List<Clothing> getClothingList();
   }
