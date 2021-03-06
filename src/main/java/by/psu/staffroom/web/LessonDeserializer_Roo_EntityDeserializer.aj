// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.web;

import by.psu.staffroom.domain.Lesson;
import by.psu.staffroom.service.api.LessonService;
import by.psu.staffroom.web.LessonDeserializer;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect LessonDeserializer_Roo_EntityDeserializer {
    
    declare @type: LessonDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LessonService
     */
    public LessonService LessonDeserializer.getLessonService() {
        return lessonService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lessonService
     */
    public void LessonDeserializer.setLessonService(LessonService lessonService) {
        this.lessonService = lessonService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService LessonDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void LessonDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Lesson
     * @throws IOException
     */
    public Lesson LessonDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Lesson lesson = lessonService.findOne(id);
        if (lesson == null) {
            throw new NotFoundException("Lesson not found");
        }
        return lesson;
    }
    
}
