// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.product.domain;

import es.product.domain.StatusOperation;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect StatusOperation_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager StatusOperation.entityManager;
    
    public static final List<String> StatusOperation.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager StatusOperation.entityManager() {
        EntityManager em = new StatusOperation().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long StatusOperation.countStatusOperations() {
        return entityManager().createQuery("SELECT COUNT(o) FROM StatusOperation o", Long.class).getSingleResult();
    }
    
    public static List<StatusOperation> StatusOperation.findAllStatusOperations() {
        return entityManager().createQuery("SELECT o FROM StatusOperation o", StatusOperation.class).getResultList();
    }
    
    public static List<StatusOperation> StatusOperation.findAllStatusOperations(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM StatusOperation o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, StatusOperation.class).getResultList();
    }
    
    public static StatusOperation StatusOperation.findStatusOperation(Integer id) {
        if (id == null) return null;
        return entityManager().find(StatusOperation.class, id);
    }
    
    public static List<StatusOperation> StatusOperation.findStatusOperationEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM StatusOperation o", StatusOperation.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<StatusOperation> StatusOperation.findStatusOperationEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM StatusOperation o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, StatusOperation.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void StatusOperation.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void StatusOperation.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            StatusOperation attached = StatusOperation.findStatusOperation(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void StatusOperation.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void StatusOperation.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public StatusOperation StatusOperation.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        StatusOperation merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
