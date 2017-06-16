// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.product.domain;

import es.product.domain.BookingSales;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BookingSales_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager BookingSales.entityManager;
    
    public static final List<String> BookingSales.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager BookingSales.entityManager() {
        EntityManager em = new BookingSales().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long BookingSales.countBookingSaleses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM BookingSales o", Long.class).getSingleResult();
    }
    
    public static List<BookingSales> BookingSales.findAllBookingSaleses() {
        return entityManager().createQuery("SELECT o FROM BookingSales o", BookingSales.class).getResultList();
    }
    
    public static List<BookingSales> BookingSales.findAllBookingSaleses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM BookingSales o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, BookingSales.class).getResultList();
    }
    
    public static BookingSales BookingSales.findBookingSales(Integer id) {
        if (id == null) return null;
        return entityManager().find(BookingSales.class, id);
    }
    
    public static List<BookingSales> BookingSales.findBookingSalesEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM BookingSales o", BookingSales.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<BookingSales> BookingSales.findBookingSalesEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM BookingSales o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, BookingSales.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void BookingSales.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void BookingSales.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            BookingSales attached = BookingSales.findBookingSales(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void BookingSales.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void BookingSales.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public BookingSales BookingSales.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        BookingSales merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}