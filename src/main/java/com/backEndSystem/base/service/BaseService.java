package com.backEndSystem.base.service;

import java.io.Serializable;
import java.util.Collection;
import java.util.Set;

import com.backEndSystem.query.BaseQuery;
import com.backEndSystem.query.PageResult;

public interface BaseService<T>{
	public PageResult<T> getPageResult(final BaseQuery baseQuery);
	public Collection<T> getEntries();
	public Set<T> getEntriesByIds(Serializable[] ids);
	public void saveEntry(T t);
	public void updateEntry(T t);
	public T getEntryById(Serializable id);
	public void deleteEntriesByIds(Serializable[] ids);
	public void deleteEntryById(Serializable id);
}
