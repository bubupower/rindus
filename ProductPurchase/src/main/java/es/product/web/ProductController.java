package es.product.web;
import es.product.domain.Product;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Product.class)
@Controller
@RequestMapping("/products")
public class ProductController {
}
