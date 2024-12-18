package com.jsb.service.address;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import com.jsb.constant.ResourceName;
import com.jsb.constant.SearchFields;
import com.jsb.dto.ListResponse;
import com.jsb.dto.address.ProvinceRequest;
import com.jsb.dto.address.ProvinceResponse;
import com.jsb.mapper.address.ProvinceMapper;
import com.jsb.repository.address.ProvinceRepository;

import java.util.List;

@Service
@AllArgsConstructor
public class ProvinceServiceImpl implements ProvinceService {

    private ProvinceRepository provinceRepository;

    private ProvinceMapper provinceMapper;

    @Override
    public ListResponse<ProvinceResponse> findAll(int page, int size, String sort, String filter, String search, boolean all) {
        return defaultFindAll(page, size, sort, filter, search, all, SearchFields.PROVINCE, provinceRepository, provinceMapper);
    }

    @Override
    public ProvinceResponse findById(Long id) {
        return defaultFindById(id, provinceRepository, provinceMapper, ResourceName.PROVINCE);
    }

    @Override
    public ProvinceResponse save(ProvinceRequest request) {
        return defaultSave(request, provinceRepository, provinceMapper);
    }

    @Override
    public ProvinceResponse save(Long id, ProvinceRequest request) {
        return defaultSave(id, request, provinceRepository, provinceMapper, ResourceName.PROVINCE);
    }

    @Override
    public void delete(Long id) {
        provinceRepository.deleteById(id);
    }

    @Override
    public void delete(List<Long> ids) {
        provinceRepository.deleteAllById(ids);
    }

}
