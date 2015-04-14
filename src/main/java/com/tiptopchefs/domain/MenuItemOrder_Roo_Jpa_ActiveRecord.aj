// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.tiptopchefs.domain;

import com.tiptopchefs.domain.MenuItemOrder;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MenuItemOrder_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MenuItemOrder.entityManager;
    
    public static final List<String> MenuItemOrder.fieldNames4OrderClauseFilter = java.util.Arrays.asList("name", "address", "total", "deliveryDate", "menuItems");
    
    public static final EntityManager MenuItemOrder.entityManager() {
        EntityManager em = new MenuItemOrder().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MenuItemOrder.countMenuItemOrders() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MenuItemOrder o", Long.class).getSingleResult();
    }
    
    public static List<MenuItemOrder> MenuItemOrder.findAllMenuItemOrders() {
        return entityManager().createQuery("SELECT o FROM MenuItemOrder o", MenuItemOrder.class).getResultList();
    }
    
    public static List<MenuItemOrder> MenuItemOrder.findAllMenuItemOrders(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MenuItemOrder o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MenuItemOrder.class).getResultList();
    }
    
    public static MenuItemOrder MenuItemOrder.findMenuItemOrder(Long id) {
        if (id == null) return null;
        return entityManager().find(MenuItemOrder.class, id);
    }
    
    public static List<MenuItemOrder> MenuItemOrder.findMenuItemOrderEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MenuItemOrder o", MenuItemOrder.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<MenuItemOrder> MenuItemOrder.findMenuItemOrderEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MenuItemOrder o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MenuItemOrder.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MenuItemOrder.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MenuItemOrder.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MenuItemOrder attached = MenuItemOrder.findMenuItemOrder(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MenuItemOrder.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MenuItemOrder.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MenuItemOrder MenuItemOrder.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MenuItemOrder merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
