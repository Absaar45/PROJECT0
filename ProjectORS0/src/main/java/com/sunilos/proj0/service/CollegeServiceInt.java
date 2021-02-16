package com.sunilos.proj0.service;

import java.util.List;

import com.sunilos.proj0.dto.CollegeDTO;
import com.sunilos.proj0.exception.DuplicateRecordException;

/**
 * College Service interface.
 * 
 * @author Chain of Responsibility
 * @version 1.0
 * Copyright (c) Chain of Responsibility
 */
public interface CollegeServiceInt {
	/**
	 * Adds a College
	 * 
	 * @param dto : the dto
	 * 
	 * @throws DuplicateRecordException
	 *             : @throws when College is already exists
	 */
	public long add(CollegeDTO dto) throws DuplicateRecordException;

	/**
	 * Updates a College
	 * 
	 * @param dto : the dto
	 * 
	 * @throws DuplicateRecordException
	 *             : @throws when updated College is already exists
	 */
	public void update(CollegeDTO dto) throws DuplicateRecordException ;

	/**
	 * Deletes a College
	 * 
	 * @param id : the id
	 */
	public void delete(long id);

	/**
	 * Finds College by Name
	 * 
	 * @param name
	 *            : get @parameter
	 * @return dto : the dto
	 */
	public CollegeDTO findByName(String name);

	/**
	 * Finds College by primary key
	 * 
	 * @param name
	 *            : get @parameter
	 * @return dto : the dto
	 */
	public CollegeDTO findByPK(long id);

	/**
	 * Searches Colleges
	 * 
	 * @return list : List of Colleges
	 * @param dto
	 *            : Search @parameters
	 */
	public List search(CollegeDTO dto);

	/**
	 * Searches Colleges with pagination
	 * 
	 * @return list : List of Colleges
	 * @param dto
	 *            : Search @parameters
	 * @param pageNo
	 *            : Current Page No.
	 * @param pageSize
	 *            : Size of Page
	 */
	public List search(CollegeDTO dto, int pageNo, int pageSize);
}
