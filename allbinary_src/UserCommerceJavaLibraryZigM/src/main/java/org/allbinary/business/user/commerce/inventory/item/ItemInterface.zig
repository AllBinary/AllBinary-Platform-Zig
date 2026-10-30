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
// package org.allbinary.business.user.commerce.inventory.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const ItemInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.ItemInterface";
    pointer: *anyopaque,
    object: Object,
    base: TableMappingInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setIdFn: *const fn (pointer: *anyopaque, itemId: ?*String) void,
    setNumberFn: *const fn (pointer: *anyopaque, number: ?*String) void,
    setInBasketsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setWeightFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setEnabledFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setNewOrUsedFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSummaryFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setDistributorFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setIdUsedByDistributorFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setProducedByFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setProductionDateFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setStartProductionDateFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setDescriptionFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setKeywordsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setCategoryFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTypeFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSmallImageFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setMediumImageFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setLargeImageFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTimeEnteredFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setLastModifiedFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPriceFn: *const fn (pointer: *anyopaque, value: ?*Money) void,
    setCommentFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setCustomsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setDownloadsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setGroupsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setOptionsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPermissionsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSpecialsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    getIdFn: *const fn (pointer: *anyopaque) ?*String,
    getNumberFn: *const fn (pointer: *anyopaque) ?*String,
    getInBasketsFn: *const fn (pointer: *anyopaque) ?*String,
    getWeightFn: *const fn (pointer: *anyopaque) ?*String,
    getEnabledFn: *const fn (pointer: *anyopaque) ?*String,
    getNewOrUsedFn: *const fn (pointer: *anyopaque) ?*String,
    getSummaryFn: *const fn (pointer: *anyopaque) ?*String,
    getDistributorFn: *const fn (pointer: *anyopaque) ?*String,
    getIdUsedByDistributorFn: *const fn (pointer: *anyopaque) ?*String,
    getProducedByFn: *const fn (pointer: *anyopaque) ?*String,
    getProductionDateFn: *const fn (pointer: *anyopaque) ?*String,
    getStartProductionDateFn: *const fn (pointer: *anyopaque) ?*String,
    getDescriptionFn: *const fn (pointer: *anyopaque) ?*String,
    getKeywordsFn: *const fn (pointer: *anyopaque) ?*String,
    getCategoryFn: *const fn (pointer: *anyopaque) ?*String,
    getTypeFn: *const fn (pointer: *anyopaque) ?*String,
    getSmallImageFn: *const fn (pointer: *anyopaque) ?*String,
    getMediumImageFn: *const fn (pointer: *anyopaque) ?*String,
    getLargeImageFn: *const fn (pointer: *anyopaque) ?*String,
    getTimeEnteredFn: *const fn (pointer: *anyopaque) ?*String,
    getLastModifiedFn: *const fn (pointer: *anyopaque) ?*String,
    getPriceFn: *const fn (pointer: *anyopaque) ?*Money,
    getCommentFn: *const fn (pointer: *anyopaque) ?*String,
    getCustomsFn: *const fn (pointer: *anyopaque) ?*String,
    getDownloadsFn: *const fn (pointer: *anyopaque) ?*String,
    getGroupsFn: *const fn (pointer: *anyopaque) ?*String,
    getOptionsFn: *const fn (pointer: *anyopaque) ?*String,
    getPermissionsFn: *const fn (pointer: *anyopaque) ?*String,
    getSpecialsFn: *const fn (pointer: *anyopaque) ?*String,
    getTotalFn: *const fn (pointer: *anyopaque) ?*Money,

    pub fn setId(self: *Self, itemId: ?*String) void {
        return self.setIdFn(self.pointer, itemId);
    }

    pub fn setNumber(self: *Self, number: ?*String) void {
        return self.setNumberFn(self.pointer, number);
    }

    pub fn setInBaskets(self: *Self, value: ?*String) void {
        return self.setInBasketsFn(self.pointer, value);
    }

    pub fn setWeight(self: *Self, value: ?*String) void {
        return self.setWeightFn(self.pointer, value);
    }

    pub fn setEnabled(self: *Self, value: ?*String) void {
        return self.setEnabledFn(self.pointer, value);
    }

    pub fn setNewOrUsed(self: *Self, value: ?*String) void {
        return self.setNewOrUsedFn(self.pointer, value);
    }

    pub fn setSummary(self: *Self, value: ?*String) void {
        return self.setSummaryFn(self.pointer, value);
    }

    pub fn setDistributor(self: *Self, value: ?*String) void {
        return self.setDistributorFn(self.pointer, value);
    }

    pub fn setIdUsedByDistributor(self: *Self, value: ?*String) void {
        return self.setIdUsedByDistributorFn(self.pointer, value);
    }

    pub fn setProducedBy(self: *Self, value: ?*String) void {
        return self.setProducedByFn(self.pointer, value);
    }

    pub fn setProductionDate(self: *Self, value: ?*String) void {
        return self.setProductionDateFn(self.pointer, value);
    }

    pub fn setStartProductionDate(self: *Self, value: ?*String) void {
        return self.setStartProductionDateFn(self.pointer, value);
    }

    pub fn setDescription(self: *Self, value: ?*String) void {
        return self.setDescriptionFn(self.pointer, value);
    }

    pub fn setKeywords(self: *Self, value: ?*String) void {
        return self.setKeywordsFn(self.pointer, value);
    }

    pub fn setCategory(self: *Self, value: ?*String) void {
        return self.setCategoryFn(self.pointer, value);
    }

    pub fn setType(self: *Self, value: ?*String) void {
        return self.setTypeFn(self.pointer, value);
    }

    pub fn setSmallImage(self: *Self, value: ?*String) void {
        return self.setSmallImageFn(self.pointer, value);
    }

    pub fn setMediumImage(self: *Self, value: ?*String) void {
        return self.setMediumImageFn(self.pointer, value);
    }

    pub fn setLargeImage(self: *Self, value: ?*String) void {
        return self.setLargeImageFn(self.pointer, value);
    }

    pub fn setTimeEntered(self: *Self, value: ?*String) void {
        return self.setTimeEnteredFn(self.pointer, value);
    }

    pub fn setLastModified(self: *Self, value: ?*String) void {
        return self.setLastModifiedFn(self.pointer, value);
    }

    pub fn setPrice(self: *Self, value: ?*Money) void {
        return self.setPriceFn(self.pointer, value);
    }

    pub fn setComment(self: *Self, value: ?*String) void {
        return self.setCommentFn(self.pointer, value);
    }

    pub fn setCustoms(self: *Self, value: ?*String) void {
        return self.setCustomsFn(self.pointer, value);
    }

    pub fn setDownloads(self: *Self, value: ?*String) void {
        return self.setDownloadsFn(self.pointer, value);
    }

    pub fn setGroups(self: *Self, value: ?*String) void {
        return self.setGroupsFn(self.pointer, value);
    }

    pub fn setOptions(self: *Self, value: ?*String) void {
        return self.setOptionsFn(self.pointer, value);
    }

    pub fn setPermissions(self: *Self, value: ?*String) void {
        return self.setPermissionsFn(self.pointer, value);
    }

    pub fn setSpecials(self: *Self, value: ?*String) void {
        return self.setSpecialsFn(self.pointer, value);
    }

    pub fn getId(self: *Self) ?*String {
        return self.getIdFn(self.pointer);
    }

    pub fn getNumber(self: *Self) ?*String {
        return self.getNumberFn(self.pointer);
    }

    pub fn getInBaskets(self: *Self) ?*String {
        return self.getInBasketsFn(self.pointer);
    }

    pub fn getWeight(self: *Self) ?*String {
        return self.getWeightFn(self.pointer);
    }

    pub fn getEnabled(self: *Self) ?*String {
        return self.getEnabledFn(self.pointer);
    }

    pub fn getNewOrUsed(self: *Self) ?*String {
        return self.getNewOrUsedFn(self.pointer);
    }

    pub fn getSummary(self: *Self) ?*String {
        return self.getSummaryFn(self.pointer);
    }

    pub fn getDistributor(self: *Self) ?*String {
        return self.getDistributorFn(self.pointer);
    }

    pub fn getIdUsedByDistributor(self: *Self) ?*String {
        return self.getIdUsedByDistributorFn(self.pointer);
    }

    pub fn getProducedBy(self: *Self) ?*String {
        return self.getProducedByFn(self.pointer);
    }

    pub fn getProductionDate(self: *Self) ?*String {
        return self.getProductionDateFn(self.pointer);
    }

    pub fn getStartProductionDate(self: *Self) ?*String {
        return self.getStartProductionDateFn(self.pointer);
    }

    pub fn getDescription(self: *Self) ?*String {
        return self.getDescriptionFn(self.pointer);
    }

    pub fn getKeywords(self: *Self) ?*String {
        return self.getKeywordsFn(self.pointer);
    }

    pub fn getCategory(self: *Self) ?*String {
        return self.getCategoryFn(self.pointer);
    }

    pub fn getType(self: *Self) ?*String {
        return self.getTypeFn(self.pointer);
    }

    pub fn getSmallImage(self: *Self) ?*String {
        return self.getSmallImageFn(self.pointer);
    }

    pub fn getMediumImage(self: *Self) ?*String {
        return self.getMediumImageFn(self.pointer);
    }

    pub fn getLargeImage(self: *Self) ?*String {
        return self.getLargeImageFn(self.pointer);
    }

    pub fn getTimeEntered(self: *Self) ?*String {
        return self.getTimeEnteredFn(self.pointer);
    }

    pub fn getLastModified(self: *Self) ?*String {
        return self.getLastModifiedFn(self.pointer);
    }

    pub fn getPrice(self: *Self) ?*Money {
        return self.getPriceFn(self.pointer);
    }

    pub fn getComment(self: *Self) ?*String {
        return self.getCommentFn(self.pointer);
    }

    pub fn getCustoms(self: *Self) ?*String {
        return self.getCustomsFn(self.pointer);
    }

    pub fn getDownloads(self: *Self) ?*String {
        return self.getDownloadsFn(self.pointer);
    }

    pub fn getGroups(self: *Self) ?*String {
        return self.getGroupsFn(self.pointer);
    }

    pub fn getOptions(self: *Self) ?*String {
        return self.getOptionsFn(self.pointer);
    }

    pub fn getPermissions(self: *Self) ?*String {
        return self.getPermissionsFn(self.pointer);
    }

    pub fn getSpecials(self: *Self) ?*String {
        return self.getSpecialsFn(self.pointer);
    }

    pub fn getTotal(self: *Self) ?*Money {
        return self.getTotalFn(self.pointer);
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
            fn setId(pointer: *anyopaque, itemId: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setId").setId(itemId);
            }
            fn setNumber(pointer: *anyopaque, number: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setNumber").setNumber(number);
            }
            fn setInBaskets(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setInBaskets").setInBaskets(value);
            }
            fn setWeight(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setWeight").setWeight(value);
            }
            fn setEnabled(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setEnabled").setEnabled(value);
            }
            fn setNewOrUsed(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setNewOrUsed").setNewOrUsed(value);
            }
            fn setSummary(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSummary").setSummary(value);
            }
            fn setDistributor(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setDistributor").setDistributor(value);
            }
            fn setIdUsedByDistributor(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setIdUsedByDistributor").setIdUsedByDistributor(value);
            }
            fn setProducedBy(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProducedBy").setProducedBy(value);
            }
            fn setProductionDate(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProductionDate").setProductionDate(value);
            }
            fn setStartProductionDate(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStartProductionDate").setStartProductionDate(value);
            }
            fn setDescription(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setDescription").setDescription(value);
            }
            fn setKeywords(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setKeywords").setKeywords(value);
            }
            fn setCategory(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setCategory").setCategory(value);
            }
            fn setType(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setType").setType(value);
            }
            fn setSmallImage(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSmallImage").setSmallImage(value);
            }
            fn setMediumImage(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMediumImage").setMediumImage(value);
            }
            fn setLargeImage(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setLargeImage").setLargeImage(value);
            }
            fn setTimeEntered(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTimeEntered").setTimeEntered(value);
            }
            fn setLastModified(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setLastModified").setLastModified(value);
            }
            fn setPrice(pointer: *anyopaque, value: ?*Money) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPrice").setPrice(value);
            }
            fn setComment(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setComment").setComment(value);
            }
            fn setCustoms(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setCustoms").setCustoms(value);
            }
            fn setDownloads(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setDownloads").setDownloads(value);
            }
            fn setGroups(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setGroups").setGroups(value);
            }
            fn setOptions(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setOptions").setOptions(value);
            }
            fn setPermissions(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPermissions").setPermissions(value);
            }
            fn setSpecials(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecials").setSpecials(value);
            }
            fn getId(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getId").getId());
            }
            fn getNumber(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getNumber").getNumber());
            }
            fn getInBaskets(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getInBaskets").getInBaskets());
            }
            fn getWeight(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getWeight").getWeight());
            }
            fn getEnabled(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getEnabled").getEnabled());
            }
            fn getNewOrUsed(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getNewOrUsed").getNewOrUsed());
            }
            fn getSummary(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSummary").getSummary());
            }
            fn getDistributor(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getDistributor").getDistributor());
            }
            fn getIdUsedByDistributor(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getIdUsedByDistributor").getIdUsedByDistributor());
            }
            fn getProducedBy(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getProducedBy").getProducedBy());
            }
            fn getProductionDate(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getProductionDate").getProductionDate());
            }
            fn getStartProductionDate(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStartProductionDate").getStartProductionDate());
            }
            fn getDescription(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getDescription").getDescription());
            }
            fn getKeywords(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getKeywords").getKeywords());
            }
            fn getCategory(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCategory").getCategory());
            }
            fn getType(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getType").getType());
            }
            fn getSmallImage(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSmallImage").getSmallImage());
            }
            fn getMediumImage(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getMediumImage").getMediumImage());
            }
            fn getLargeImage(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLargeImage").getLargeImage());
            }
            fn getTimeEntered(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTimeEntered").getTimeEntered());
            }
            fn getLastModified(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLastModified").getLastModified());
            }
            fn getPrice(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getPrice").getPrice());
            }
            fn getComment(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getComment").getComment());
            }
            fn getCustoms(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCustoms").getCustoms());
            }
            fn getDownloads(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getDownloads").getDownloads());
            }
            fn getGroups(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getGroups").getGroups());
            }
            fn getOptions(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getOptions").getOptions());
            }
            fn getPermissions(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPermissions").getPermissions());
            }
            fn getSpecials(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecials").getSpecials());
            }
            fn getTotal(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getTotal").getTotal());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = TableMappingInterface.of(object).?.*, .toStringFn = Methods.toString, .setIdFn = Methods.setId, .setNumberFn = Methods.setNumber, .setInBasketsFn = Methods.setInBaskets, .setWeightFn = Methods.setWeight, .setEnabledFn = Methods.setEnabled, .setNewOrUsedFn = Methods.setNewOrUsed, .setSummaryFn = Methods.setSummary, .setDistributorFn = Methods.setDistributor, .setIdUsedByDistributorFn = Methods.setIdUsedByDistributor, .setProducedByFn = Methods.setProducedBy, .setProductionDateFn = Methods.setProductionDate, .setStartProductionDateFn = Methods.setStartProductionDate, .setDescriptionFn = Methods.setDescription, .setKeywordsFn = Methods.setKeywords, .setCategoryFn = Methods.setCategory, .setTypeFn = Methods.setType, .setSmallImageFn = Methods.setSmallImage, .setMediumImageFn = Methods.setMediumImage, .setLargeImageFn = Methods.setLargeImage, .setTimeEnteredFn = Methods.setTimeEntered, .setLastModifiedFn = Methods.setLastModified, .setPriceFn = Methods.setPrice, .setCommentFn = Methods.setComment, .setCustomsFn = Methods.setCustoms, .setDownloadsFn = Methods.setDownloads, .setGroupsFn = Methods.setGroups, .setOptionsFn = Methods.setOptions, .setPermissionsFn = Methods.setPermissions, .setSpecialsFn = Methods.setSpecials, .getIdFn = Methods.getId, .getNumberFn = Methods.getNumber, .getInBasketsFn = Methods.getInBaskets, .getWeightFn = Methods.getWeight, .getEnabledFn = Methods.getEnabled, .getNewOrUsedFn = Methods.getNewOrUsed, .getSummaryFn = Methods.getSummary, .getDistributorFn = Methods.getDistributor, .getIdUsedByDistributorFn = Methods.getIdUsedByDistributor, .getProducedByFn = Methods.getProducedBy, .getProductionDateFn = Methods.getProductionDate, .getStartProductionDateFn = Methods.getStartProductionDate, .getDescriptionFn = Methods.getDescription, .getKeywordsFn = Methods.getKeywords, .getCategoryFn = Methods.getCategory, .getTypeFn = Methods.getType, .getSmallImageFn = Methods.getSmallImage, .getMediumImageFn = Methods.getMediumImage, .getLargeImageFn = Methods.getLargeImage, .getTimeEnteredFn = Methods.getTimeEntered, .getLastModifiedFn = Methods.getLastModified, .getPriceFn = Methods.getPrice, .getCommentFn = Methods.getComment, .getCustomsFn = Methods.getCustoms, .getDownloadsFn = Methods.getDownloads, .getGroupsFn = Methods.getGroups, .getOptionsFn = Methods.getOptions, .getPermissionsFn = Methods.getPermissions, .getSpecialsFn = Methods.getSpecials, .getTotalFn = Methods.getTotal };
        return this;
    }
};

