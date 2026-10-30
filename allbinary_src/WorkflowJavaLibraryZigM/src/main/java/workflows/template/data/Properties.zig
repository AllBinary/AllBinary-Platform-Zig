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
// package workflows.template.data

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const TagSupport = @import("javax/servlet/jsp/tagext/TagSupport.zig").TagSupport;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const Properties = struct {
    const Self = @This();
    pub const java_name = "workflows.template.data.Properties";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    propertiesHashMap: ?*HashMap = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("Start/Tag"), this, this.commonStrings.?.CONSTRUCTOR });
        }
        this.propertiesHashMap = Inheritance.upcast(@TypeOf(this.propertiesHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        return this;
    }
    

    pub fn getPropertiesHashMap(self: *Self) ?*HashMap {
        return self.propertiesHashMap;
    }
    

    pub fn doEndTag(self: *Self) i32 {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Tag Ended"), self, String.literal("doEndTag") });
        }
        self.propertiesHashMap = Inheritance.upcast(@TypeOf(self.propertiesHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        return TagSupport.EVAL_PAGE;
    }
};

