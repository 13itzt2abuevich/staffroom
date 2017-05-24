package by.psu.staffroom.web;
import by.psu.staffroom.domain.Room;
import by.psu.staffroom.service.api.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = RoomDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Room.class)
public class RoomDeserializer extends JsonObjectDeserializer<Room> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private RoomService roomService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param roomService
     * @param conversionService
     */
    @Autowired
    public RoomDeserializer(@Lazy RoomService roomService, ConversionService conversionService) {
        this.roomService = roomService;
        this.conversionService = conversionService;
    }
}
