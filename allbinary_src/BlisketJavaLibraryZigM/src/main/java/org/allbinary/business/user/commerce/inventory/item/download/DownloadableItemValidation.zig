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
// package org.allbinary.business.user.commerce.inventory.item.download

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
const DownloadableItem = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem.zig").DownloadableItem;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const DownloadableItemValidation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation";
    base: Validation = undefined,
    logUtil: ?*LogUtil = null,
    downloadableItem: ?*DownloadableItem = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(downloadableItem: ?*DownloadableItem) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        this.downloadableItem = downloadableItem;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            if (self.downloadableItem.?.getId() == null or Inheritance.receiverOf(self.downloadableItem.?.getId().?, "length").length() < 1 or Inheritance.receiverOf(self.downloadableItem.?.getId().?, "length").length() > AbSqlData.MAXNUM) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (self.downloadableItem.?.getId() != null and !Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ self.downloadableItem.?.getId() })) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (self.downloadableItem.?.getSystem() == null or Inheritance.receiverOf(self.downloadableItem.?.getSystem().?, "length").length() < 1 or Inheritance.receiverOf(self.downloadableItem.?.getSystem().?, "length").length() > AbSqlData.MAXSTRING) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (self.downloadableItem.?.getPlatform() == null or Inheritance.receiverOf(self.downloadableItem.?.getPlatform().?, "length").length() < 1 or Inheritance.receiverOf(self.downloadableItem.?.getPlatform().?, "length").length() > AbSqlData.MAXSTRING) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (self.downloadableItem.?.getSpecialName() == null or Inheritance.receiverOf(self.downloadableItem.?.getSpecialName().?, "length").length() < 0 or Inheritance.receiverOf(self.downloadableItem.?.getSpecialName().?, "length").length() > AbSqlData.MAXSTRING) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (self.downloadableItem.?.getVersion() == null or Inheritance.receiverOf(self.downloadableItem.?.getVersion().?, "length").length() < 1 or Inheritance.receiverOf(self.downloadableItem.?.getVersion().?, "length").length() > AbSqlData.MAXSTRING) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (self.downloadableItem.?.getChanges() == null or Inheritance.receiverOf(self.downloadableItem.?.getChanges().?, "length").length() < 1 or Inheritance.receiverOf(self.downloadableItem.?.getChanges().?, "length").length() > AbSqlData.MAXBLOB) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (self.downloadableItem.?.getSize() == null) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            } else {
                const size: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(self.downloadableItem.?.getSize())));
                if (size.?.length() < 1 or size.?.length() > AbSqlData.MAXNUM) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
            }
            if (self.downloadableItem.?.getValidTime() == null) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            } else {
                const size: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(self.downloadableItem.?.getValidTime())));
                if (size.?.length() < 1 or size.?.length() > AbSqlData.MAXNUM) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
            }
            if (self.downloadableItem.?.getRetries() == null) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            } else {
                const size: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(self.downloadableItem.?.getRetries())));
                if (size.?.length() < 1 or size.?.length() > AbSqlData.MAXNUM) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
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
            if (self.downloadableItem.?.getId() == null or Inheritance.receiverOf(self.downloadableItem.?.getId().?, "length").length() < 1 or Inheritance.receiverOf(self.downloadableItem.?.getId().?, "length").length() > AbSqlData.MAXNUM) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Id is invalid. Must be number < ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(AbSqlData.MAXNUM)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 digits.<br/>") });
            }
            if (self.downloadableItem.?.getId() != null and !Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ self.downloadableItem.?.getId() })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Id is invalid. Must be > 0.<br/>") });
            }
            if (self.downloadableItem.?.getSystem() == null or Inheritance.receiverOf(self.downloadableItem.?.getSystem().?, "length").length() < 1 or Inheritance.receiverOf(self.downloadableItem.?.getSystem().?, "length").length() > AbSqlData.MAXSTRING) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("System value is invalid. Must be < ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(AbSqlData.MAXSTRING)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 characters long.<br/>") });
            }
            if (self.downloadableItem.?.getPlatform() == null or Inheritance.receiverOf(self.downloadableItem.?.getPlatform().?, "length").length() < 1 or Inheritance.receiverOf(self.downloadableItem.?.getPlatform().?, "length").length() > AbSqlData.MAXSTRING) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Platform value is invalid. Must be < ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(AbSqlData.MAXSTRING)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 characters long.<br/>") });
            }
            if (self.downloadableItem.?.getSpecialName() == null or Inheritance.receiverOf(self.downloadableItem.?.getSpecialName().?, "length").length() < 0 or Inheritance.receiverOf(self.downloadableItem.?.getSpecialName().?, "length").length() > AbSqlData.MAXSTRING) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Special Name value is invalid. Must be < ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(AbSqlData.MAXSTRING)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 characters long.<br/>") });
            }
            if (self.downloadableItem.?.getVersion() == null or Inheritance.receiverOf(self.downloadableItem.?.getVersion().?, "length").length() < 1 or Inheritance.receiverOf(self.downloadableItem.?.getVersion().?, "length").length() > AbSqlData.MAXSTRING) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Version value is invalid. Must be < ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(AbSqlData.MAXSTRING)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 characters long.<br/>") });
            }
            if (self.downloadableItem.?.getChanges() == null or Inheritance.receiverOf(self.downloadableItem.?.getChanges().?, "length").length() < 0 or Inheritance.receiverOf(self.downloadableItem.?.getChanges().?, "length").length() > AbSqlData.MAXBLOB) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Changes value is invalid. Must be < ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(AbSqlData.MAXBLOB)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and >= 0 characters long.<br/>") });
            }
            if (self.downloadableItem.?.getSize() == null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("File Size is null") });
            } else {
                const size: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(self.downloadableItem.?.getSize())));
                if (size.?.length() < 1 or size.?.length() > AbSqlData.MAXNUM) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("File Size is invalid. Must be number < ") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(AbSqlData.MAXNUM)) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 digits.<br/>") });
                }
            }
            if (self.downloadableItem.?.getValidTime() == null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Valid Time is null") });
            } else {
                const size: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(self.downloadableItem.?.getValidTime())));
                if (size.?.length() < 1 or size.?.length() > AbSqlData.MAXNUM) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Valid Time is invalid. Must be number < ") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(AbSqlData.MAXNUM)) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 digits.<br/>") });
                }
            }
            if (self.downloadableItem.?.getRetries() == null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Retries is null") });
            } else {
                const size: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(self.downloadableItem.?.getRetries())));
                if (size.?.length() < 1 or size.?.length() > AbSqlData.MAXNUM) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Retries is invalid. Must be number < ") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(AbSqlData.MAXNUM)) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 digits.<br/>") });
                }
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

