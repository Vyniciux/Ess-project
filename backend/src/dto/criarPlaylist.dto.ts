import { IsDefined, IsInt, isInt, IsNotEmpty, IsOptional, IsString } from "class-validator"

class CriarPlaylistDTO{

    @IsString()
    @IsDefined()
    name:string

    @IsString()
    @IsDefined()
    description: string;

    @IsString()
    @IsDefined()
    imageURL: string;

    @IsInt()
    @IsDefined()
    userId: number;

}

export default CriarPlaylistDTO