// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.web;

import by.psu.staffroom.domain.Instructor;
import by.psu.staffroom.service.api.InstructorService;
import by.psu.staffroom.web.InstructorDeserializer;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect InstructorDeserializer_Roo_EntityDeserializer {
    
    declare @type: InstructorDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return InstructorService
     */
    public InstructorService InstructorDeserializer.getInstructorService() {
        return instructorService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param instructorService
     */
    public void InstructorDeserializer.setInstructorService(InstructorService instructorService) {
        this.instructorService = instructorService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService InstructorDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void InstructorDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Instructor
     * @throws IOException
     */
    public Instructor InstructorDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Instructor instructor = instructorService.findOne(id);
        if (instructor == null) {
            throw new NotFoundException("Instructor not found");
        }
        return instructor;
    }
    
}
