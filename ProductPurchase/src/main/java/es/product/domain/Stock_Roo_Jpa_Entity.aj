// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.product.domain;

import es.product.domain.Stock;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Stock_Roo_Jpa_Entity {
    
    declare @type: Stock: @Entity;
    
    declare @type: Stock: @Table(schema = "ADMIN", name = "STOCK");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "STOCK_ID")
    private Integer Stock.stockId;
    
    public Integer Stock.getStockId() {
        return this.stockId;
    }
    
    public void Stock.setStockId(Integer id) {
        this.stockId = id;
    }
    
}
