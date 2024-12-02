package com.houseofscientists.project1.database;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RegisterItem {
    private String title;
    private String imageUrl;
    private String description;

    public RegisterItem(String title, String imageUrl, String description) {
        this.title = title;
        this.imageUrl = imageUrl;
        this.description = description;
    }
}