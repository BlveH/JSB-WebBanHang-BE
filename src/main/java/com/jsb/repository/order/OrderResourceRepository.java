package com.jsb.repository.order;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.jsb.entity.order.OrderResource;

public interface OrderResourceRepository extends JpaRepository<OrderResource, Long>, JpaSpecificationExecutor<OrderResource> {}
