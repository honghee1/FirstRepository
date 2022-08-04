package com.project.Service;

import org.springframework.stereotype.Service;

import com.project.dto.MovieDTO;
import com.project.mapper.MovieMapper;
@Service
public class movieService {
	
	private MovieMapper mapper;

	public movieService(MovieMapper mapper) {
		this.mapper = mapper;
	}

	public int insertMovie(MovieDTO dto) {
		int mcode = mapper.selectMovieCode();
		dto.setMcode(mcode);
		System.out.println(dto);
		mapper.insertMovie(dto);
		return mcode;
	}

}
