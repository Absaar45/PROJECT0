package com.sunilos.proj0.service;

import java.util.List;

import com.sunilos.proj0.dto.CourseDTO;
import com.sunilos.proj0.exception.DuplicateRecordException;

/**
 * Course Service interface.
 * 
 * @author Chain of Responsibility
 * @version 1.0
 * Copyright (c) Chain of Responsibility
 */
public interface CourseServiceInt {
	/**
	 * Adds a Course
	 * 
	 * @param dto : the dto
	 * 
	 * @throws DuplicateRecordException
	 *             : throws when Course is already exists
	 */
	public long add(CourseDTO dto) throws DuplicateRecordException;

	/**
	 * Updates a Course
	 * 
	 * @param dto : the dto
	 * 
	 * @throws DuplicateRecordException
	 *             : throws when updated Course is already exists
	 */
	public void update(CourseDTO dto) throws DuplicateRecordException;

	/**
	 * Deletes a Course
	 * 
	 * @param id : the id
	 */
	public void delete(long id);

	/**
	 * Finds Course by Name
	 * 
	 * @param name
	 *            : get @parameter
	 * @return dto : the dto
	 */
	public CourseDTO findByName(String name);

	/**
	 * Finds Course by primary key
	 * 
	 * @param id
	 *            : get @parameter
	 * @return dto : the dto
	 */
	public CourseDTO findByPK(long id);

	/**
	 * Searches Courses
	 * 
	 * @return list : List of Courses
	 * @param dto
	 *            : Search @parameters
	 */
	public List search(CourseDTO dto);

	/**
	 * Searches Courses with pagination
	 * 
	 * @return list : List of Courses
	 * @param dto
	 *            : Search @parameters
	 * @param pageNo
	 *            : Current Page No.
	 * @param pageSize
	 *            : Size of Page
	 */
	public List search(CourseDTO dto, int pageNo, int pageSize);
}