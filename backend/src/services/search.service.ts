import { Repository, Like } from "typeorm";
import dbConn from "../database/postgresConnection";
import User from "../entities/user.entity";
import Song from "../entities/songs.entity";
import Artist from "../entities/artist.entity";
import Playlist from "../entities/playlist.entity";

class SearchService{
    userRepository: Repository<User>
    artistRepository: Repository<Artist>
    songRepository: Repository<Song>
    playlistRepository: Repository<Playlist>
    
    constructor(){
        this.userRepository = dbConn.getRepository(User)
        this.artistRepository = dbConn.getRepository(Artist)
        this.songRepository = dbConn.getRepository(Song)
        this.playlistRepository = dbConn.getRepository(Playlist)
    }

    async searchArtist(description:string,filter:string): Promise<Artist[]>{
        if(filter == 'song' || filter == 'playlist')
            return []
        return await this.artistRepository.find({where:{name:Like("%"+description+"%")},select:{name:true}})
    }
    async searchSong(description:string,filter:string): Promise<Song[]>{
        if(filter == 'artist' || filter == 'playlist')
            return []
        return await this.songRepository.find({where:{name:Like("%"+description+"%")},select:{name:true}})
    }
    async searchPlaylist(description:string,filter:string): Promise<Playlist[]>{
        if(filter == 'artist' || filter == 'song')
            return []
        return await this.playlistRepository.find({where:{name:Like("%"+description+"%")},select:{name:true}})
    }
}
export default SearchService