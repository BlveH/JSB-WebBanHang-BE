package com.jsb.dto.client;

import lombok.Data;
import org.springframework.lang.Nullable;

import com.jsb.dto.authentication.UserResponse;
import com.jsb.dto.order.OrderCancellationReasonResponse;
import com.jsb.dto.order.OrderResourceResponse;
import com.jsb.dto.order.OrderVariantResponse;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.Set;

@Data
public class ClientOrderResponse {
    private Long id;
    private Instant createdAt;
    private Instant updatedAt;
    private String code;
    private Integer status;
    private String toName;
    private String toPhone;
    private String toAddress;
    private String toWardName;
    private String toDistrictName;
    private String toProvinceName;
    private OrderResourceResponse orderResource;
    @Nullable
    private OrderCancellationReasonResponse orderCancellationReason;
    @Nullable
    private String note;
    private UserResponse user;
    private Set<OrderVariantResponse> orderVariants;
    private BigDecimal totalAmount;
    private BigDecimal tax;
    private BigDecimal shippingCost;
    private BigDecimal totalPay;
}
