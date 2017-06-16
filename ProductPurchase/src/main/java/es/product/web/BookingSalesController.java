package es.product.web;
import es.product.domain.BookingSales;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = BookingSales.class)
@Controller
@RequestMapping("/bookingsaleses")
public class BookingSalesController {
}
