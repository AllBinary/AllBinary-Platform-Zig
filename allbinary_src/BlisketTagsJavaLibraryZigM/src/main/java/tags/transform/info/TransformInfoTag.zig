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
// package tags.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const TagHelperFactoryInterface = @import("admin/taghelpers/TagHelperFactoryInterface.zig").TagHelperFactoryInterface;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const OutputTypeData = @import("org/allbinary/logic/io/OutputTypeData.zig").OutputTypeData;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoRequestHelperFactory = @import("taghelpers/transform/info/TransformInfoRequestHelperFactory.zig").TransformInfoRequestHelperFactory;
const ModifyTag = @import("tags/ModifyTag.zig").ModifyTag;

pub const TransformInfoTag = struct {
    const Self = @This();
    pub const java_name = "tags.transform.info.TransformInfoTag";
    base: ModifyTag = undefined,
    logUtil: ?*LogUtil = null,
    name: ?*String = null,
    storeName: ?*String = null,
    objectFile: ?*String = null,
    anyType: ?*String = null,
    objectConfigFile: ?*String = null,
    objectConfig: ?*String = null,
    templateFile: ?*String = null,
    template: ?*String = null,
    dataFile: ?*String = null,
    data: ?*String = null,
    @"type": ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.name = null;
        this.storeName = null;
        this.objectFile = null;
        this.anyType = null;
        this.objectConfigFile = null;
        this.objectConfig = null;
        this.templateFile = null;
        this.template = null;
        this.dataFile = null;
        this.data = null;
        this.@"type" = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ModifyTag, "create1", .{ TransformInfoRequestHelperFactory.create() }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(tagHelperFactoryInterface: ?*TagHelperFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ModifyTag, "create1", .{ tagHelperFactoryInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setName(self: *Self, value: ?*String) void {
        self.name = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ TransformInfoData.getInstance().?.NAME, self.name });
    }
    

    pub fn setStoreName(self: *Self, value: ?*String) void {
        self.storeName = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ StoreFrontData.getInstance().?.NAME, self.storeName });
    }
    

    pub fn setObjectFile(self: *Self, value: ?*String) void {
        self.objectFile = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ TransformInfoData.getInstance().?.OBJECTFILENAME, self.objectFile });
    }
    

    pub fn setObject(self: *Self, value: ?*String) void {
        self.anyType = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ TransformInfoData.getInstance().?.OBJECT, self.anyType });
    }
    

    pub fn setTemplateFile(self: *Self, value: ?*String) void {
        self.templateFile = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ TransformInfoData.getInstance().?.TEMPLATEFILENAME, self.templateFile });
    }
    

    pub fn setTemplate(self: *Self, value: ?*String) void {
        self.template = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ TransformInfoData.getInstance().?.TEMPLATE, self.template });
    }
    

    pub fn setDataFile(self: *Self, value: ?*String) void {
        self.dataFile = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ TransformInfoData.getInstance().?.DATAFILENAME, self.dataFile });
    }
    

    pub fn setData(self: *Self, value: ?*String) void {
        self.data = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ TransformInfoData.getInstance().?.DATA, self.data });
    }
    

    pub fn setObjectConfigFile(self: *Self, value: ?*String) void {
        self.objectConfigFile = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ TransformInfoData.getInstance().?.OBJECTCONFIGFILENAME, self.objectConfigFile });
    }
    

    pub fn setObjectConfig(self: *Self, value: ?*String) void {
        self.objectConfig = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ TransformInfoData.getInstance().?.OBJECTCONFIG, self.objectConfig });
    }
    

    pub fn setType(self: *Self, value: ?*String) void {
        self.@"type" = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ OutputTypeData.getInstance().?.NAME, self.@"type" });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("TransformInfoTag type set: "), self.@"type"), self, String.literal("setType") });
        }
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getObjectFile(self: *Self) ?*String {
        return self.objectFile;
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            return self.base.doStartTag();
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

