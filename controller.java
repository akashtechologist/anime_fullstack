package com.akash.anime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@CrossOrigin("http://localhost:8081/")
@RequestMapping("/akash")

public class controller {
    @Autowired
    Repository repo;

    @PostMapping("/savedata")
    public String savedata(@RequestBody Animemodel s) {
        repo.save(s);
        
        return "inserted success";
    }
    


    
}
