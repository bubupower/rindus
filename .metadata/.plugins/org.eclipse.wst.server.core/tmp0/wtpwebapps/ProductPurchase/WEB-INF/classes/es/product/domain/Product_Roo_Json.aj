// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.product.domain;

import es.product.domain.Product;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Product_Roo_Json {
    
    public String Product.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String Product.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static Product Product.fromJsonToProduct(String json) {
        return new JSONDeserializer<Product>()
        .use(null, Product.class).deserialize(json);
    }
    
    public static String Product.toJsonArray(Collection<Product> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String Product.toJsonArray(Collection<Product> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<Product> Product.fromJsonArrayToProducts(String json) {
        return new JSONDeserializer<List<Product>>()
        .use("values", Product.class).deserialize(json);
    }
    
}