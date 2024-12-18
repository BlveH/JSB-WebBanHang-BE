package com.jsb.dto.statistic;

import lombok.Data;

import java.util.List;

@Data
public class StatisticResponse {
    private Integer totalCustomer;
    private Integer totalProduct;
    private Integer totalOrder;
    private Integer totalWaybill;
    private Integer totalActivePromotion;
    private Integer totalSupplier;
    private Integer totalBrand;
    private List<StatisticResource> statisticRegistration;
    private List<StatisticResource> statisticOrder;
    private List<StatisticResource> statisticWaybill;
}
