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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlData = @import("org/allbinary/logic/communication/sql/AbSqlData.zig").AbSqlData;
const Validation = @import("org/allbinary/logic/control/validate/Validation.zig").Validation;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const BasicItemValidation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.BasicItemValidation";
    base: Validation = undefined,
    logUtil: ?*LogUtil = null,
    MAXWEIGHT: i32 = 0,
    MAXPRICE: i32 = 0,
    itemInterface: ?*ItemInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.MAXWEIGHT = 14;
        this.MAXPRICE = 14;
        
    }
    

    pub fn create1(itemInterface: ?*ItemInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        this.itemInterface = itemInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            if (Inheritance.receiver(self.itemInterface.?, "getId").getId() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getId").getId().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getId").getId().?, "length").length() > AbSqlData.MAXNUM) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            if (Inheritance.receiver(self.itemInterface.?, "getId").getId() != null and !Inheritance.call(stringValidationUtil.?, "isNumber", .{ Inheritance.receiver(self.itemInterface.?, "getId").getId() })) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getNumber").getNumber() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getNumber").getNumber().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getNumber").getNumber().?, "length").length() > AbSqlData.MAXNUM) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getNumber").getNumber() != null and !Inheritance.call(stringValidationUtil.?, "isNumber", .{ Inheritance.receiver(self.itemInterface.?, "getNumber").getNumber() })) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getInBaskets").getInBaskets() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getInBaskets").getInBaskets().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getInBaskets").getInBaskets().?, "length").length() > AbSqlData.MAXNUM) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getInBaskets").getInBaskets() != null and !Inheritance.call(stringValidationUtil.?, "isNumber", .{ Inheritance.receiver(self.itemInterface.?, "getInBaskets").getInBaskets() })) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getWeight").getWeight() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getWeight").getWeight().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getWeight").getWeight().?, "length").length() > self.MAXWEIGHT) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getWeight").getWeight() != null and !Inheritance.call(stringValidationUtil.?, "isNumber", .{ Inheritance.receiver(self.itemInterface.?, "getWeight").getWeight() })) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getEnabled").getEnabled() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getEnabled").getEnabled().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getEnabled").getEnabled().?, "length").length() > AbSqlData.MAXSTRING) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getNewOrUsed").getNewOrUsed() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getNewOrUsed").getNewOrUsed().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getNewOrUsed").getNewOrUsed().?, "length").length() > AbSqlData.MAXSTRING) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getSummary").getSummary() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getSummary").getSummary().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getSummary").getSummary().?, "length").length() > AbSqlData.MAXSTRING) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getDescription").getDescription() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getDescription").getDescription().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getDescription").getDescription().?, "length").length() > AbSqlData.MAXBLOB) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getKeywords").getKeywords() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getKeywords").getKeywords().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getKeywords").getKeywords().?, "length").length() > AbSqlData.MAXSTRING) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getCategory").getCategory() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getCategory").getCategory().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getCategory").getCategory().?, "length").length() > AbSqlData.MAXSTRING) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getType").getType() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getType").getType().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getType").getType().?, "length").length() > AbSqlData.MAXSTRING) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getPrice").getPrice() == null or !Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getPrice").getPrice().?, "isValid").isValid()) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getCustoms").getCustoms() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getCustoms").getCustoms().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getCustoms").getCustoms().?, "length").length() > AbSqlData.MAXNUM) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getDownloads").getDownloads() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getDownloads").getDownloads().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getDownloads").getDownloads().?, "length").length() > AbSqlData.MAXNUM) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getGroups").getGroups() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getGroups").getGroups().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getGroups").getGroups().?, "length").length() > AbSqlData.MAXNUM) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getOptions").getOptions() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getOptions").getOptions().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getOptions").getOptions().?, "length").length() > AbSqlData.MAXNUM) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getPermissions").getPermissions() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getPermissions").getPermissions().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getPermissions").getPermissions().?, "length").length() > AbSqlData.MAXNUM) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.receiver(self.itemInterface.?, "getSpecials").getSpecials() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getSpecials").getSpecials().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getSpecials").getSpecials().?, "length").length() > AbSqlData.MAXNUM) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (Inheritance.receiver(self.itemInterface.?, "getId").getId() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getId").getId().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getId").getId().?, "length").length() > AbSqlData.MAXNUM) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Id is invalid. Must be number < "), AbSqlData.MAXNUM), String.literal(" and > 0 digits.<br />")) });
            }
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            if (Inheritance.receiver(self.itemInterface.?, "getId").getId() != null and !Inheritance.call(stringValidationUtil.?, "isNumber", .{ Inheritance.receiver(self.itemInterface.?, "getId").getId() })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Id is invalid. Must be > 0.<br />") });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getNumber").getNumber() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getNumber").getNumber().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getNumber").getNumber().?, "length").length() > AbSqlData.MAXNUM) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Number of items is invalid. Must be number < "), AbSqlData.MAXNUM), String.literal(" and > 0 digits.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getNumber").getNumber() != null and !Inheritance.call(stringValidationUtil.?, "isNumber", .{ Inheritance.receiver(self.itemInterface.?, "getNumber").getNumber() })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Number of items value is not a valid number.<br />") });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getInBaskets").getInBaskets() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getInBaskets").getInBaskets().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getInBaskets").getInBaskets().?, "length").length() > AbSqlData.MAXNUM) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Number in baskets is invalid. Must be < "), AbSqlData.MAXNUM), String.literal(" and > 0 digits.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getInBaskets").getInBaskets() != null and !Inheritance.call(stringValidationUtil.?, "isNumber", .{ Inheritance.receiver(self.itemInterface.?, "getInBaskets").getInBaskets() })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("In Baskets value is not a valid number.<br />") });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getWeight").getWeight() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getWeight").getWeight().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getWeight").getWeight().?, "length").length() > self.MAXWEIGHT) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Weight value is invalid. Must be < "), self.MAXWEIGHT), String.literal(" and > 0 digits.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getWeight").getWeight() != null and !Inheritance.call(stringValidationUtil.?, "isNumber", .{ Inheritance.receiver(self.itemInterface.?, "getWeight").getWeight() })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Weight value is not a valid number.<br />") });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getEnabled").getEnabled() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getEnabled").getEnabled().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getEnabled").getEnabled().?, "length").length() > AbSqlData.MAXSTRING) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("For Sale value is invalid. Must be < "), AbSqlData.MAXSTRING), String.literal(" and > 0 characters long.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getNewOrUsed").getNewOrUsed() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getNewOrUsed").getNewOrUsed().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getNewOrUsed").getNewOrUsed().?, "length").length() > AbSqlData.MAXSTRING) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("New Or Used value is invalid. Must be < "), AbSqlData.MAXSTRING), String.literal(" and > 0 characters long.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getSummary").getSummary() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getSummary").getSummary().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getSummary").getSummary().?, "length").length() > AbSqlData.MAXSTRING) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Summary value is invalid. Must be < "), AbSqlData.MAXSTRING), String.literal(" and > 0 characters long.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getDescription").getDescription() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getDescription").getDescription().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getDescription").getDescription().?, "length").length() > AbSqlData.MAXBLOB) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Description value is invalid. Must be < "), AbSqlData.MAXBLOB), String.literal(" and > 0 characters long.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getKeywords").getKeywords() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getKeywords").getKeywords().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getKeywords").getKeywords().?, "length").length() > AbSqlData.MAXSTRING) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Keywords value is invalid. Must be < "), AbSqlData.MAXSTRING), String.literal(" and > 0 characters long.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getCategory").getCategory() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getCategory").getCategory().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getCategory").getCategory().?, "length").length() > AbSqlData.MAXSTRING) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Category value is invalid. Must be < "), AbSqlData.MAXSTRING), String.literal(" and > 0 characters long.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getType").getType() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getType").getType().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getType").getType().?, "length").length() > AbSqlData.MAXSTRING) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Type value is invalid. Must be < "), AbSqlData.MAXSTRING), String.literal(" and > 0 characters long.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getPrice").getPrice() == null or !Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getPrice").getPrice().?, "isValid").isValid()) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Price value is invalid. Must be < "), self.MAXPRICE), String.literal(" and > 0 in length.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getCustoms").getCustoms() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getCustoms").getCustoms().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getCustoms").getCustoms().?, "length").length() > AbSqlData.MAXNUM) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Custom items value is invalid. Must be number < "), AbSqlData.MAXNUM), String.literal(" and > 0 digits.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getDownloads").getDownloads() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getDownloads").getDownloads().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getDownloads").getDownloads().?, "length").length() > AbSqlData.MAXNUM) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Downloadable item value is invalid. Must be number < "), AbSqlData.MAXNUM), String.literal(" and > 0 digits.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getGroups").getGroups() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getGroups").getGroups().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getGroups").getGroups().?, "length").length() > AbSqlData.MAXNUM) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Group item value is invalid. Must be number < "), AbSqlData.MAXNUM), String.literal(" and > 0 digits.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getOptions").getOptions() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getOptions").getOptions().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getOptions").getOptions().?, "length").length() > AbSqlData.MAXNUM) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Option item value is invalid. Must be number < "), AbSqlData.MAXNUM), String.literal(" and > 0 digits.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getPermissions").getPermissions() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getPermissions").getPermissions().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getPermissions").getPermissions().?, "length").length() > AbSqlData.MAXNUM) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Permission item value is invalid. Must be number < "), AbSqlData.MAXNUM), String.literal(" and > 0 digits.<br />")) });
            }
            if (Inheritance.receiver(self.itemInterface.?, "getSpecials").getSpecials() == null or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getSpecials").getSpecials().?, "length").length() < 1 or Inheritance.receiverOf(Inheritance.receiver(self.itemInterface.?, "getSpecials").getSpecials().?, "length").length() > AbSqlData.MAXNUM) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Special item value is invalid. Must be number < "), AbSqlData.MAXNUM), String.literal(" and > 0 digits.<br />")) });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Validating Form");
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
};

