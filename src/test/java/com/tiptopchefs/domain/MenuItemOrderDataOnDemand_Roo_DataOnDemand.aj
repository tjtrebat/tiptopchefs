// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.tiptopchefs.domain;

import com.tiptopchefs.domain.MenuItemOrder;
import com.tiptopchefs.domain.MenuItemOrderDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect MenuItemOrderDataOnDemand_Roo_DataOnDemand {
    
    declare @type: MenuItemOrderDataOnDemand: @Component;
    
    private Random MenuItemOrderDataOnDemand.rnd = new SecureRandom();
    
    private List<MenuItemOrder> MenuItemOrderDataOnDemand.data;
    
    public MenuItemOrder MenuItemOrderDataOnDemand.getNewTransientMenuItemOrder(int index) {
        MenuItemOrder obj = new MenuItemOrder();
        setAddress(obj, index);
        setDeliveryDate(obj, index);
        setName(obj, index);
        setTotal(obj, index);
        return obj;
    }
    
    public void MenuItemOrderDataOnDemand.setAddress(MenuItemOrder obj, int index) {
        String address = "address_" + index;
        if (address.length() > 30) {
            address = address.substring(0, 30);
        }
        obj.setAddress(address);
    }
    
    public void MenuItemOrderDataOnDemand.setDeliveryDate(MenuItemOrder obj, int index) {
        Date deliveryDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setDeliveryDate(deliveryDate);
    }
    
    public void MenuItemOrderDataOnDemand.setName(MenuItemOrder obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    public void MenuItemOrderDataOnDemand.setTotal(MenuItemOrder obj, int index) {
        Double total = new Integer(index).doubleValue();
        obj.setTotal(total);
    }
    
    public MenuItemOrder MenuItemOrderDataOnDemand.getSpecificMenuItemOrder(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        MenuItemOrder obj = data.get(index);
        Long id = obj.getId();
        return MenuItemOrder.findMenuItemOrder(id);
    }
    
    public MenuItemOrder MenuItemOrderDataOnDemand.getRandomMenuItemOrder() {
        init();
        MenuItemOrder obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return MenuItemOrder.findMenuItemOrder(id);
    }
    
    public boolean MenuItemOrderDataOnDemand.modifyMenuItemOrder(MenuItemOrder obj) {
        return false;
    }
    
    public void MenuItemOrderDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = MenuItemOrder.findMenuItemOrderEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'MenuItemOrder' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<MenuItemOrder>();
        for (int i = 0; i < 10; i++) {
            MenuItemOrder obj = getNewTransientMenuItemOrder(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
