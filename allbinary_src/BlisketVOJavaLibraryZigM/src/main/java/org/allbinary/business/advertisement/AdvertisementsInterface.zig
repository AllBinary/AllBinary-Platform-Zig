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
// package org.allbinary.business.advertisement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AdvertisementInterface = @import("org/allbinary/business/advertisement/AdvertisementInterface.zig").AdvertisementInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AdvertisementsInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.AdvertisementsInterface";
    pointer: *anyopaque,
    object: Object,
    addFn: *const fn (pointer: *anyopaque, advertisementInterface: ?*AdvertisementInterface) void,
    getFn: *const fn (pointer: *anyopaque, index: i32) ?*AdvertisementInterface,
    getCurrentPageNumFn: *const fn (pointer: *anyopaque) i32,
    getErrorDescriptionFn: *const fn (pointer: *anyopaque) ?*String,
    getErrorNumFn: *const fn (pointer: *anyopaque) ?*String,
    getNumberOfPostersFn: *const fn (pointer: *anyopaque) i32,
    getNumberOfProductsInPageFn: *const fn (pointer: *anyopaque) i32,
    getStatusCodeFn: *const fn (pointer: *anyopaque) i32,
    getTotalNumberOfProductsFn: *const fn (pointer: *anyopaque) i32,
    isSearchValidFn: *const fn (pointer: *anyopaque) bool,
    setCurrentPageNumFn: *const fn (pointer: *anyopaque, currentPageNum: i32) void,
    setErrorDescriptionFn: *const fn (pointer: *anyopaque, errorDescription: ?*String) void,
    setErrorNumFn: *const fn (pointer: *anyopaque, errorNum: ?*String) void,
    setNumberOfProductsInPageFn: *const fn (pointer: *anyopaque, numberOfProductsInPage: i32) void,
    setStatusCodeFn: *const fn (pointer: *anyopaque, statusCode: i32) void,
    setTotalNumberOfProductsFn: *const fn (pointer: *anyopaque, totalNumberOfProducts: i32) void,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn add(self: *Self, advertisementInterface: ?*AdvertisementInterface) void {
        return self.addFn(self.pointer, advertisementInterface);
    }

    pub fn get(self: *Self, index: i32) ?*AdvertisementInterface {
        return self.getFn(self.pointer, index);
    }

    pub fn getCurrentPageNum(self: *Self) i32 {
        return self.getCurrentPageNumFn(self.pointer);
    }

    pub fn getErrorDescription(self: *Self) ?*String {
        return self.getErrorDescriptionFn(self.pointer);
    }

    pub fn getErrorNum(self: *Self) ?*String {
        return self.getErrorNumFn(self.pointer);
    }

    pub fn getNumberOfPosters(self: *Self) i32 {
        return self.getNumberOfPostersFn(self.pointer);
    }

    pub fn getNumberOfProductsInPage(self: *Self) i32 {
        return self.getNumberOfProductsInPageFn(self.pointer);
    }

    pub fn getStatusCode(self: *Self) i32 {
        return self.getStatusCodeFn(self.pointer);
    }

    pub fn getTotalNumberOfProducts(self: *Self) i32 {
        return self.getTotalNumberOfProductsFn(self.pointer);
    }

    pub fn isSearchValid(self: *Self) bool {
        return self.isSearchValidFn(self.pointer);
    }

    pub fn setCurrentPageNum(self: *Self, currentPageNum: i32) void {
        return self.setCurrentPageNumFn(self.pointer, currentPageNum);
    }

    pub fn setErrorDescription(self: *Self, errorDescription: ?*String) void {
        return self.setErrorDescriptionFn(self.pointer, errorDescription);
    }

    pub fn setErrorNum(self: *Self, errorNum: ?*String) void {
        return self.setErrorNumFn(self.pointer, errorNum);
    }

    pub fn setNumberOfProductsInPage(self: *Self, numberOfProductsInPage: i32) void {
        return self.setNumberOfProductsInPageFn(self.pointer, numberOfProductsInPage);
    }

    pub fn setStatusCode(self: *Self, statusCode: i32) void {
        return self.setStatusCodeFn(self.pointer, statusCode);
    }

    pub fn setTotalNumberOfProducts(self: *Self, totalNumberOfProducts: i32) void {
        return self.setTotalNumberOfProductsFn(self.pointer, totalNumberOfProducts);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn add(pointer: *anyopaque, advertisementInterface: ?*AdvertisementInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "add").add(advertisementInterface);
            }
            fn get(pointer: *anyopaque, index: i32) ?*AdvertisementInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AdvertisementInterface, Inheritance.receiver(implementation, "get").get(index));
            }
            fn getCurrentPageNum(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getCurrentPageNum").getCurrentPageNum();
            }
            fn getErrorDescription(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getErrorDescription").getErrorDescription());
            }
            fn getErrorNum(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getErrorNum").getErrorNum());
            }
            fn getNumberOfPosters(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getNumberOfPosters").getNumberOfPosters();
            }
            fn getNumberOfProductsInPage(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getNumberOfProductsInPage").getNumberOfProductsInPage();
            }
            fn getStatusCode(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getStatusCode").getStatusCode();
            }
            fn getTotalNumberOfProducts(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getTotalNumberOfProducts").getTotalNumberOfProducts();
            }
            fn isSearchValid(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isSearchValid").isSearchValid();
            }
            fn setCurrentPageNum(pointer: *anyopaque, currentPageNum: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setCurrentPageNum").setCurrentPageNum(currentPageNum);
            }
            fn setErrorDescription(pointer: *anyopaque, errorDescription: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setErrorDescription").setErrorDescription(errorDescription);
            }
            fn setErrorNum(pointer: *anyopaque, errorNum: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setErrorNum").setErrorNum(errorNum);
            }
            fn setNumberOfProductsInPage(pointer: *anyopaque, numberOfProductsInPage: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setNumberOfProductsInPage").setNumberOfProductsInPage(numberOfProductsInPage);
            }
            fn setStatusCode(pointer: *anyopaque, statusCode: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStatusCode").setStatusCode(statusCode);
            }
            fn setTotalNumberOfProducts(pointer: *anyopaque, totalNumberOfProducts: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTotalNumberOfProducts").setTotalNumberOfProducts(totalNumberOfProducts);
            }
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .addFn = Methods.add, .getFn = Methods.get, .getCurrentPageNumFn = Methods.getCurrentPageNum, .getErrorDescriptionFn = Methods.getErrorDescription, .getErrorNumFn = Methods.getErrorNum, .getNumberOfPostersFn = Methods.getNumberOfPosters, .getNumberOfProductsInPageFn = Methods.getNumberOfProductsInPage, .getStatusCodeFn = Methods.getStatusCode, .getTotalNumberOfProductsFn = Methods.getTotalNumberOfProducts, .isSearchValidFn = Methods.isSearchValid, .setCurrentPageNumFn = Methods.setCurrentPageNum, .setErrorDescriptionFn = Methods.setErrorDescription, .setErrorNumFn = Methods.setErrorNum, .setNumberOfProductsInPageFn = Methods.setNumberOfProductsInPage, .setStatusCodeFn = Methods.setStatusCode, .setTotalNumberOfProductsFn = Methods.setTotalNumberOfProducts, .toStringFn = Methods.toString };
        return this;
    }
};

