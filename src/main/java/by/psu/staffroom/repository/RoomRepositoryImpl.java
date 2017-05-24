package by.psu.staffroom.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import by.psu.staffroom.domain.Room;

/**
 * = RoomRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = RoomRepositoryCustom.class)
public class RoomRepositoryImpl extends QueryDslRepositorySupportExt<Room> {

    /**
     * TODO Auto-generated constructor documentation
     */
    RoomRepositoryImpl() {
        super(Room.class);
    }
}