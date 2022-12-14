package com.spring.gms.common.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gms.common.dao.CommonDao;
import com.spring.gms.common.dto.ContactDto;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	private CommonDao commonDao;
	
	@Override
	public void addNewContact(ContactDto contactDto) throws Exception {
		commonDao.insertContact(contactDto);
	}

	@Override
	public List<ContactDto> getContactList() throws Exception {
		return commonDao.selectListContact();
	}

	@Override
	public ContactDto getContactDetail(int contactCd) throws Exception {
		return commonDao.selectOneContact(contactCd);
	}

	@Override
	public void removeContact(int[] deleteContactCdList) throws Exception {
		commonDao.deleteContact(deleteContactCdList);
	}

}
