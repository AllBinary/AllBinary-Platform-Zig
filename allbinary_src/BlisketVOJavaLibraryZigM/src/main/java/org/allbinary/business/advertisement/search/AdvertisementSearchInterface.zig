//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.business.advertisement.search

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const AdvertisementCategoryInterface = @import("org/allbinary/business/advertisement/search/category/AdvertisementCategoryInterface.zig").AdvertisementCategoryInterface;
const AdvertisementWebsiteInterface = @import("org/allbinary/business/advertisement/search/website/AdvertisementWebsiteInterface.zig").AdvertisementWebsiteInterface;
const PriceConstraintInterface = @import("org/allbinary/logic/control/contraints/price/PriceConstraintInterface.zig").PriceConstraintInterface;
const TwoDimensionalConstraintInterface = @import("org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface.zig").TwoDimensionalConstraintInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AdvertisementSearchInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.search.AdvertisementSearchInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getWebSiteFn: *const fn (pointer: *anyopaque) ?*AdvertisementWebsiteInterface,
    getCategoryFn: *const fn (pointer: *anyopaque) ?*AdvertisementCategoryInterface,
    getSizeConstraintsFn: *const fn (pointer: *anyopaque) ?*TwoDimensionalConstraintInterface,
    getPricingConstraintsFn: *const fn (pointer: *anyopaque) ?*PriceConstraintInterface,
    getPageNumberFn: *const fn (pointer: *anyopaque) i32,
    getProductsPerPageFn: *const fn (pointer: *anyopaque) i32,
    getSearchParamsFn: *const fn (pointer: *anyopaque) ?*HashMap,
    setCategoryFn: *const fn (pointer: *anyopaque, advertisementCategoryInterface: ?*AdvertisementCategoryInterface) void,
    setSizeConstraintsFn: *const fn (pointer: *anyopaque, twoDimensionConstraintsInterface: ?*TwoDimensionalConstraintInterface) void,
    setPricingConstraintsFn: *const fn (pointer: *anyopaque, priceConstraintInterface: ?*PriceConstraintInterface) void,
    setPageNumberFn: *const fn (pointer: *anyopaque, pageNumber: i32) void,
    setProductsPerPageFn: *const fn (pointer: *anyopaque, productsPerPage: i32) void,
    setSearchParamsFn: *const fn (pointer: *anyopaque, columnAndKeywordHashMap: ?*HashMap) void,

    pub fn getWebSite(self: *Self) ?*AdvertisementWebsiteInterface {
        return self.getWebSiteFn(self.pointer);
    }

    pub fn getCategory(self: *Self) ?*AdvertisementCategoryInterface {
        return self.getCategoryFn(self.pointer);
    }

    pub fn getSizeConstraints(self: *Self) ?*TwoDimensionalConstraintInterface {
        return self.getSizeConstraintsFn(self.pointer);
    }

    pub fn getPricingConstraints(self: *Self) ?*PriceConstraintInterface {
        return self.getPricingConstraintsFn(self.pointer);
    }

    pub fn getPageNumber(self: *Self) i32 {
        return self.getPageNumberFn(self.pointer);
    }

    pub fn getProductsPerPage(self: *Self) i32 {
        return self.getProductsPerPageFn(self.pointer);
    }

    pub fn getSearchParams(self: *Self) ?*HashMap {
        return self.getSearchParamsFn(self.pointer);
    }

    pub fn setCategory(self: *Self, advertisementCategoryInterface: ?*AdvertisementCategoryInterface) void {
        return self.setCategoryFn(self.pointer, advertisementCategoryInterface);
    }

    pub fn setSizeConstraints(self: *Self, twoDimensionConstraintsInterface: ?*TwoDimensionalConstraintInterface) void {
        return self.setSizeConstraintsFn(self.pointer, twoDimensionConstraintsInterface);
    }

    pub fn setPricingConstraints(self: *Self, priceConstraintInterface: ?*PriceConstraintInterface) void {
        return self.setPricingConstraintsFn(self.pointer, priceConstraintInterface);
    }

    pub fn setPageNumber(self: *Self, pageNumber: i32) void {
        return self.setPageNumberFn(self.pointer, pageNumber);
    }

    pub fn setProductsPerPage(self: *Self, productsPerPage: i32) void {
        return self.setProductsPerPageFn(self.pointer, productsPerPage);
    }

    pub fn setSearchParams(self: *Self, columnAndKeywordHashMap: ?*HashMap) void {
        return self.setSearchParamsFn(self.pointer, columnAndKeywordHashMap);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getWebSite(pointer: *anyopaque) ?*AdvertisementWebsiteInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AdvertisementWebsiteInterface, Inheritance.receiver(implementation, "getWebSite").getWebSite());
            }
            fn getCategory(pointer: *anyopaque) ?*AdvertisementCategoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AdvertisementCategoryInterface, Inheritance.receiver(implementation, "getCategory").getCategory());
            }
            fn getSizeConstraints(pointer: *anyopaque) ?*TwoDimensionalConstraintInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TwoDimensionalConstraintInterface, Inheritance.receiver(implementation, "getSizeConstraints").getSizeConstraints());
            }
            fn getPricingConstraints(pointer: *anyopaque) ?*PriceConstraintInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PriceConstraintInterface, Inheritance.receiver(implementation, "getPricingConstraints").getPricingConstraints());
            }
            fn getPageNumber(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getPageNumber").getPageNumber();
            }
            fn getProductsPerPage(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getProductsPerPage").getProductsPerPage();
            }
            fn getSearchParams(pointer: *anyopaque) ?*HashMap {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*HashMap, Inheritance.receiver(implementation, "getSearchParams").getSearchParams());
            }
            fn setCategory(pointer: *anyopaque, advertisementCategoryInterface: ?*AdvertisementCategoryInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setCategory").setCategory(advertisementCategoryInterface);
            }
            fn setSizeConstraints(pointer: *anyopaque, twoDimensionConstraintsInterface: ?*TwoDimensionalConstraintInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSizeConstraints").setSizeConstraints(twoDimensionConstraintsInterface);
            }
            fn setPricingConstraints(pointer: *anyopaque, priceConstraintInterface: ?*PriceConstraintInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPricingConstraints").setPricingConstraints(priceConstraintInterface);
            }
            fn setPageNumber(pointer: *anyopaque, pageNumber: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPageNumber").setPageNumber(pageNumber);
            }
            fn setProductsPerPage(pointer: *anyopaque, productsPerPage: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProductsPerPage").setProductsPerPage(productsPerPage);
            }
            fn setSearchParams(pointer: *anyopaque, columnAndKeywordHashMap: ?*HashMap) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSearchParams").setSearchParams(columnAndKeywordHashMap);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getWebSiteFn = Methods.getWebSite, .getCategoryFn = Methods.getCategory, .getSizeConstraintsFn = Methods.getSizeConstraints, .getPricingConstraintsFn = Methods.getPricingConstraints, .getPageNumberFn = Methods.getPageNumber, .getProductsPerPageFn = Methods.getProductsPerPage, .getSearchParamsFn = Methods.getSearchParams, .setCategoryFn = Methods.setCategory, .setSizeConstraintsFn = Methods.setSizeConstraints, .setPricingConstraintsFn = Methods.setPricingConstraints, .setPageNumberFn = Methods.setPageNumber, .setProductsPerPageFn = Methods.setProductsPerPage, .setSearchParamsFn = Methods.setSearchParams };
        return this;
    }
};

