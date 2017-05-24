package by.psu.staffroom.web;
import by.psu.staffroom.domain.Room;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = RoomsItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Room.class, type = ControllerType.ITEM)
@RooThymeleaf
public class RoomsItemThymeleafController {
}
