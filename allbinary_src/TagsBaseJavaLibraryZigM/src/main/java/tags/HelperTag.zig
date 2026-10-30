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
// package tags

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TagHelperFactoryInterface = @import("admin/taghelpers/TagHelperFactoryInterface.zig").TagHelperFactoryInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PropertiesTag = @import("tags/PropertiesTag.zig").PropertiesTag;

pub const HelperTag = struct {
    const Self = @This();
    pub const java_name = "tags.HelperTag";
    base: PropertiesTag = undefined,
    logUtil: ?*LogUtil = null,
    tagHelperFactoryInterface: ?*TagHelperFactoryInterface = null,
    anyType: ?Object = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.anyType = null;
    }
    

    pub fn create1(tagHelperFactoryInterface: ?*TagHelperFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PropertiesTag.create().*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        this.tagHelperFactoryInterface = tagHelperFactoryInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setHelper(self: *Self) void {
        if (self.anyType == null) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Creating TagHelper with: \n"), Object.toString(Object.of(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap()))), self, String.literal("doStartTag") });
            }
            self.anyType = Inheritance.upcast(@TypeOf(self.anyType), Inheritance.call(self.tagHelperFactoryInterface.?, "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
        }
    }
    

    pub fn getHelper(self: *Self) ?Object {
        return self.anyType;
    }
    

    pub fn doEndTag(self: *Self) i32 {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Tag Ended"), self, String.literal("doEndTag") });
        }
        self.anyType = null;
        return self.base.doEndTag();
    }
};

