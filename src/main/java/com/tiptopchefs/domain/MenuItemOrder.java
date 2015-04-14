package com.tiptopchefs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class MenuItemOrder {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String name;

    /**
     */
    @Size(max = 30)
    private String address;

    /**
     */
    private Double total;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date deliveryDate;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<MenuItem> menuItems = new HashSet<MenuItem>();
}
