package es.product.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "STOCK", schema = "ADMIN")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "bookingSaleses", "fkProduct" })
@RooJson
public class Stock {
}
