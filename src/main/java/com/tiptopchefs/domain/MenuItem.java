package com.tiptopchefs.domain;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class MenuItem {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String name;

    /**
     */
    private Double price;

    /**
     */
    @ManyToOne
    private Menu menu;
}
