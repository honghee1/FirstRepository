package com.project.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.project.dto.MovieDTO;
@Mapper
public interface MovieMapper {
	int selectMovieCode();
	void insertMovie(MovieDTO dto);

}
