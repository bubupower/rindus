// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.product.domain;

import es.product.domain.Product;
import es.product.domain.Stock;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;

privileged aspect Product_Roo_DbManaged {
    
    @OneToMany(mappedBy = "fkProduct")
    private Set<Stock> Product.stocks;
    
    @Column(name = "DESCRIPTION", length = 40)
    private String Product.description;
    
    @Column(name = "PRODUCT_TYPE", length = 20)
    private String Product.productType;
    
    public Set<Stock> Product.getStocks() {
        return stocks;
    }
    
    public void Product.setStocks(Set<Stock> stocks) {
        this.stocks = stocks;
    }
    
    public String Product.getDescription() {
        return description;
    }
    
    public void Product.setDescription(String description) {
        this.description = description;
    }
    
    public String Product.getProductType() {
        return productType;
    }
    
    public void Product.setProductType(String productType) {
        this.productType = productType;
    }
    
}
