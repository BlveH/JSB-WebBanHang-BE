package com.jsb.dto.product;

import lombok.Data;

@Data
public class PropertyRequest {
    private String name;
    private String code;
    private String description;
    private Integer status;
}
