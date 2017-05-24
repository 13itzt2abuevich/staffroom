package by.psu.staffroom.web;
import by.psu.staffroom.domain.Clazz;
import by.psu.staffroom.service.api.ClazzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ClazzDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Clazz.class)
public class ClazzDeserializer extends JsonObjectDeserializer<Clazz> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ClazzService clazzService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param clazzService
     * @param conversionService
     */
    @Autowired
    public ClazzDeserializer(@Lazy ClazzService clazzService, ConversionService conversionService) {
        this.clazzService = clazzService;
        this.conversionService = conversionService;
    }
}
