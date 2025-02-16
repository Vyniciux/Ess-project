import { Repository } from "typeorm";
import Song from "../entities/songs.entity";
import dbConn from "../database/postgresConnection";

class SongService {
    songRepository: Repository<Song>;

    constructor() {
        this.songRepository = dbConn.getRepository(Song);
    }

    async getAllSongs(): Promise<Song[]> {
        return await this.songRepository.find({ relations: ["album"] });
    }
}

export default SongService;