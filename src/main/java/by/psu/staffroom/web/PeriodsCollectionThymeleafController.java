package by.psu.staffroom.web;
import by.psu.staffroom.domain.Period;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = PeriodsCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Period.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class PeriodsCollectionThymeleafController {
}
