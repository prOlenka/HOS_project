package com.houseofscientists.project1.models;

import com.houseofscientists.project1.database.RegisterItem;

import java.util.ArrayList;
import java.util.List;

public class Register {
    public List<RegisterItem> addToRegister() {
        List<RegisterItem> items = new ArrayList<>();

        items.add(new RegisterItem("Image 1", "/images/register/0_MAL5924.jpg", "This is the first image"));
        items.add(new RegisterItem("Image 2", "/images/register/0_MAL5951.jpg", "This is the second image"));
        items.add(new RegisterItem("Image 3", "/images/register/0_MAL5962.jpg", "This is the third image"));
        items.add(new RegisterItem("Image 4", "/images/register/0_MAL5972.jpg", "This is the fourth image"));

        System.out.println(items.size());
        return items;
    }
}

