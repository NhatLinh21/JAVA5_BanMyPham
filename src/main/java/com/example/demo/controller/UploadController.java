package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

@Controller
public class UploadController {

    private static String UPLOADED_FOLDER = "path_to_save_uploaded_files/";

    @GetMapping("/upload")
    public String index() {
        return "form";
    }

    @PostMapping("/upload")
    public String uploadFiles(@RequestParam("files") MultipartFile[] files, Model model) {
        List<String> imagePaths = new ArrayList<>();

        try {
            for (int i = 0; i < files.length; i++) {
                byte[] bytes = files[i].getBytes();
                Path path = Paths.get(UPLOADED_FOLDER + files[i].getOriginalFilename());
                Files.write(path, bytes);

                imagePaths.add("/images/" + files[i].getOriginalFilename());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        model.addAttribute("imagePaths", imagePaths);
        return "display";
    }
}