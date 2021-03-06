// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.product.domain;

import es.product.domain.BookingSales;
import es.product.domain.StatusOperation;
import es.product.domain.Stock;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

privileged aspect BookingSales_Roo_DbManaged {
    
    @OneToMany(mappedBy = "fkBooking")
    private Set<StatusOperation> BookingSales.statusOperations;
    
    @ManyToOne
    @JoinColumn(name = "FK_STOCK", referencedColumnName = "STOCK_ID")
    private Stock BookingSales.fkStock;
    
    @Column(name = "AMOUNT")
    private Integer BookingSales.amount;
    
    @Column(name = "STATE", length = 10)
    private String BookingSales.state;
    
    public Set<StatusOperation> BookingSales.getStatusOperations() {
        return statusOperations;
    }
    
    public void BookingSales.setStatusOperations(Set<StatusOperation> statusOperations) {
        this.statusOperations = statusOperations;
    }
    
    public Stock BookingSales.getFkStock() {
        return fkStock;
    }
    
    public void BookingSales.setFkStock(Stock fkStock) {
        this.fkStock = fkStock;
    }
    
    public Integer BookingSales.getAmount() {
        return amount;
    }
    
    public void BookingSales.setAmount(Integer amount) {
        this.amount = amount;
    }
    
    public String BookingSales.getState() {
        return state;
    }
    
    public void BookingSales.setState(String state) {
        this.state = state;
    }
    
}
