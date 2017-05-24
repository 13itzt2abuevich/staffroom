package by.psu.staffroom.web;
import by.psu.staffroom.domain.Period;
import by.psu.staffroom.service.api.PeriodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = PeriodDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Period.class)
public class PeriodDeserializer extends JsonObjectDeserializer<Period> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private PeriodService periodService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param periodService
     * @param conversionService
     */
    @Autowired
    public PeriodDeserializer(@Lazy PeriodService periodService, ConversionService conversionService) {
        this.periodService = periodService;
        this.conversionService = conversionService;
    }
}
